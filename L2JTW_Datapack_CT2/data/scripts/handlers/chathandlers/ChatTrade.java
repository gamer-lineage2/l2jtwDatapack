/*
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program. If not, see <http://www.gnu.org/licenses/>.
 */
package handlers.chathandlers;

import java.util.Collection;

import net.sf.l2j.Config;
import net.sf.l2j.gameserver.datatables.MapRegionTable;
import net.sf.l2j.gameserver.handler.IChatHandler;
import net.sf.l2j.gameserver.model.BlockList;
import net.sf.l2j.gameserver.model.L2World;
import net.sf.l2j.gameserver.model.actor.instance.L2PcInstance;
import net.sf.l2j.gameserver.network.serverpackets.CreatureSay;

/**
 * Trade chat handler.
 *
 * @author  durgus
 */
public class ChatTrade implements IChatHandler
{
	private static final int[] COMMAND_IDS =
	{
		8
	};
	
	/**
	 * Handle chat type 'trade'
	 * @see net.sf.l2j.gameserver.handler.IChatHandler#handleChat(int, net.sf.l2j.gameserver.model.actor.instance.L2PcInstance, java.lang.String)
	 */
	public void handleChat(int type, L2PcInstance activeChar, String target, String text)
	{
		CreatureSay cs = new CreatureSay(activeChar.getObjectId(), type, activeChar.getName(), text);
		
		Collection<L2PcInstance> pls = L2World.getInstance().getAllPlayers().values();
		
		if (Config.DEFAULT_TRADE_CHAT.equalsIgnoreCase("on") || (Config.DEFAULT_TRADE_CHAT.equalsIgnoreCase("gm") && activeChar.isGM()))
		{
			int region = MapRegionTable.getInstance().getMapRegion(activeChar.getX(), activeChar.getY());
			for (L2PcInstance player : pls)
			{
				if (region == MapRegionTable.getInstance().getMapRegion(player.getX(), player.getY()) && !BlockList.isBlocked(player, activeChar) && player.getInstanceId() == activeChar.getInstanceId())
					player.sendPacket(cs);
			}
		}
		else if (Config.DEFAULT_TRADE_CHAT.equalsIgnoreCase("global"))
		{
			if (!activeChar.isGM() && !activeChar.getFloodProtectors().getGlobalChat().tryPerformAction("global chat"))
			{
				activeChar.sendMessage(98);
				return;
			}
			
			for (L2PcInstance player : pls)
			{
				if (!BlockList.isBlocked(player, activeChar))
					player.sendPacket(cs);
			}
		}
	}
	
	/**
	 * Returns the chat types registered to this handler
	 * @see net.sf.l2j.gameserver.handler.IChatHandler#getChatTypeList()
	 */
	public int[] getChatTypeList()
	{
		return COMMAND_IDS;
	}
}