/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
 * 02111-1307, USA.
 *
 * http://www.gnu.org/copyleft/gpl.html
 */
package handlers.admincommandhandlers;

import net.sf.l2j.gameserver.handler.IAdminCommandHandler;
import net.sf.l2j.gameserver.model.Elementals;
import net.sf.l2j.gameserver.model.L2ItemInstance;
import net.sf.l2j.gameserver.model.L2Object;
import net.sf.l2j.gameserver.model.actor.instance.L2PcInstance;
import net.sf.l2j.gameserver.model.itemcontainer.Inventory;
import net.sf.l2j.gameserver.network.SystemMessageId;
import net.sf.l2j.gameserver.network.serverpackets.InventoryUpdate;
import net.sf.l2j.gameserver.network.serverpackets.SystemMessage;
import net.sf.l2j.gameserver.datatables.MessageTable;
import net.sf.l2j.gameserver.model.L2CoreMessage;

/**
 * This class handles following admin commands: - delete = deletes target
 * 
 * @version $Revision: 1.2.2.1.2.4 $ $Date: 2005/04/11 10:05:56 $
 */
public class AdminElement implements IAdminCommandHandler
{
	private static final String[]	ADMIN_COMMANDS	=
	{
		"admin_setlh",
		"admin_setlc",
		"admin_setll",
		"admin_setlg",
		"admin_setlb",
		"admin_setlw",
		"admin_setls"
	};

	public boolean useAdminCommand(String command, L2PcInstance activeChar)
	{
		int armorType = -1;

		if (command.startsWith("admin_setlh"))
			armorType = Inventory.PAPERDOLL_HEAD;
		else if (command.startsWith("admin_setlc"))
			armorType = Inventory.PAPERDOLL_CHEST;
		else if (command.startsWith("admin_setlg"))
			armorType = Inventory.PAPERDOLL_GLOVES;
		else if (command.startsWith("admin_setlb"))
			armorType = Inventory.PAPERDOLL_FEET;
		else if (command.startsWith("admin_setll"))
			armorType = Inventory.PAPERDOLL_LEGS;
		else if (command.startsWith("admin_setlw"))
			armorType = Inventory.PAPERDOLL_RHAND;
		else if (command.startsWith("admin_setls"))
			armorType = Inventory.PAPERDOLL_LHAND;

		if (armorType != -1)
		{
			try
			{
				String[] args = command.split(" ");

				byte element = Elementals.getElementId(args[1]);
				int value = Integer.parseInt(args[2]);
				if (element < -1 || element > 5 || value < 0 || value > 450)
				{
					activeChar.sendMessage(104);
					return false;
				}

				setElement(activeChar, element, value, armorType);
			}
			catch (Exception e)
			{
				activeChar.sendMessage(134);
				return false;
			}
		}

		return true;
	}

	public String[] getAdminCommandList()
	{
		return ADMIN_COMMANDS;
	}

	private void setElement(L2PcInstance activeChar, byte type, int value, int armorType)
	{
		// get the target
		L2Object target = activeChar.getTarget();
		if (target == null)
			target = activeChar;
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
		{
			player = (L2PcInstance) target;
		}
		else
		{
			activeChar.sendPacket(new SystemMessage(SystemMessageId.INCORRECT_TARGET));
			return;
		}

		L2ItemInstance itemInstance = null;

		// only attempt to enchant if there is a weapon equipped
		L2ItemInstance parmorInstance = player.getInventory().getPaperdollItem(armorType);
		if (parmorInstance != null && parmorInstance.getLocationSlot() == armorType)
		{
			itemInstance = parmorInstance;
		}
		else
		{
			// for bows and double handed weapons
			parmorInstance = player.getInventory().getPaperdollItem(Inventory.PAPERDOLL_LRHAND);
			if (parmorInstance != null && parmorInstance.getLocationSlot() == Inventory.PAPERDOLL_LRHAND)
				itemInstance = parmorInstance;
		}

		if (itemInstance != null)
		{
			String old, current;
			Elementals element = itemInstance.getElementals();
			if (element == null)
				old = MessageTable.Messages[853].getMessage();
			else
				old = element.toString();

			// set enchant value
			player.getInventory().unEquipItemInSlotAndRecord(armorType);
			if (type == -1)
				itemInstance.clearElementAttr();
			else
				itemInstance.setElementAttr(type, value);
			player.getInventory().equipItemAndRecord(itemInstance);

			if (itemInstance.getElementals() == null)
				current = MessageTable.Messages[853].getMessage();
			else
				current = itemInstance.getElementals().toString();

			// send packets
			InventoryUpdate iu = new InventoryUpdate();
			iu.addModifiedItem(itemInstance);
			player.sendPacket(iu);

			// informations
			L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[135]);
			cm.addString(player.getName());
			cm.addString(itemInstance.getItem().getName());
			cm.addString(old);
			cm.addString(current);
			cm.sendMessage(activeChar);
			if (player != activeChar)
			{
				cm =  new L2CoreMessage (MessageTable.Messages[136]);
				cm.addString(activeChar.getName());
				cm.addString(itemInstance.getItem().getName());
				cm.addString(old);
				cm.addString(current);
				cm.sendMessage(player);
			}
		}
	}
}
