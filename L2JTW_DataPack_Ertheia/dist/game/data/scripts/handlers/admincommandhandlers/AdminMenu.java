/*
 * Copyright (C) 2004-2014 L2J DataPack
 * 
 * This file is part of L2J DataPack.
 * 
 * L2J DataPack is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * L2J DataPack is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package handlers.admincommandhandlers;

import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.l2jserver.Config;
import com.l2jserver.gameserver.datatables.AdminTable;
import com.l2jserver.gameserver.handler.AdminCommandHandler;
import com.l2jserver.gameserver.handler.IAdminCommandHandler;
import com.l2jserver.gameserver.model.L2Clan;
import com.l2jserver.gameserver.model.L2Object;
import com.l2jserver.gameserver.model.L2World;
import com.l2jserver.gameserver.model.Location;
import com.l2jserver.gameserver.model.actor.L2Character;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.network.SystemMessageId;
import com.l2jserver.gameserver.datatables.MessageTable;

/**
 * This class handles following admin commands: - handles every admin menu command
 * @version $Revision: 1.3.2.6.2.4 $ $Date: 2005/04/11 10:06:06 $
 */
public class AdminMenu implements IAdminCommandHandler
{
	private static final Logger _log = Logger.getLogger(AdminMenu.class.getName());
	
	private static final String[] ADMIN_COMMANDS =
	{
		"admin_char_manage",
		"admin_teleport_character_to_menu",
		"admin_recall_char_menu",
		"admin_recall_party_menu",
		"admin_recall_clan_menu",
		"admin_goto_char_menu",
		"admin_kick_menu",
		"admin_kill_menu",
		"admin_ban_menu",
		"admin_unban_menu"
	};
	
	@Override
	public boolean useAdminCommand(String command, L2PcInstance activeChar)
	{
		if (command.equals("admin_char_manage"))
		{
			showMainPage(activeChar);
		}
		else if (command.startsWith("admin_teleport_character_to_menu"))
		{
			String[] data = command.split(" ");
			if (data.length == 5)
			{
				String playerName = data[1];
				L2PcInstance player = L2World.getInstance().getPlayer(playerName);
				if (player != null)
				{
					/* MessageTable
					teleportCharacter(player, new Location(Integer.parseInt(data[2]), Integer.parseInt(data[3]), Integer.parseInt(data[4])), activeChar, "Admin is teleporting you.");
					 */
					teleportCharacter(player, new Location(Integer.parseInt(data[2]), Integer.parseInt(data[3]), Integer.parseInt(data[4])), activeChar, MessageTable.Messages[1777].getMessage());
				}
			}
			showMainPage(activeChar);
		}
		else if (command.startsWith("admin_recall_char_menu"))
		{
			try
			{
				String targetName = command.substring(23);
				L2PcInstance player = L2World.getInstance().getPlayer(targetName);
				/* MessageTable
				teleportCharacter(player, activeChar.getLocation(), activeChar, "Admin is teleporting you.");
				 */
				teleportCharacter(player, activeChar.getLocation(), activeChar, MessageTable.Messages[1777].getMessage());
			}
			catch (StringIndexOutOfBoundsException e)
			{
			}
		}
		else if (command.startsWith("admin_recall_party_menu"))
		{
			try
			{
				String targetName = command.substring(24);
				L2PcInstance player = L2World.getInstance().getPlayer(targetName);
				if (player == null)
				{
					activeChar.sendPacket(SystemMessageId.INCORRECT_TARGET);
					return true;
				}
				if (!player.isInParty())
				{
					/* MessageTable.Messages[1778]
					activeChar.sendMessage("Player is not in party.");
					teleportCharacter(player, activeChar.getLocation(), activeChar, "Admin is teleporting you.");
					 */
					activeChar.sendMessage(1778);
					teleportCharacter(player, activeChar.getLocation(), activeChar, MessageTable.Messages[1777].getMessage());
					return true;
				}
				for (L2PcInstance pm : player.getParty().getMembers())
				{
					/* MessageTable
					teleportCharacter(pm, activeChar.getLocation(), activeChar, "Your party is being teleported by an Admin.");
					 */
					teleportCharacter(pm, activeChar.getLocation(), activeChar, MessageTable.Messages[1779].getMessage());
				}
			}
			catch (Exception e)
			{
				_log.log(Level.WARNING, "", e);
			}
		}
		else if (command.startsWith("admin_recall_clan_menu"))
		{
			try
			{
				String targetName = command.substring(23);
				L2PcInstance player = L2World.getInstance().getPlayer(targetName);
				if (player == null)
				{
					activeChar.sendPacket(SystemMessageId.INCORRECT_TARGET);
					return true;
				}
				L2Clan clan = player.getClan();
				if (clan == null)
				{
					/* MessageTable.Messages[1780]
					activeChar.sendMessage("Player is not in a clan.");
					teleportCharacter(player, activeChar.getLocation(), activeChar, "Admin is teleporting you.");
					 */
					activeChar.sendMessage(1780);
					teleportCharacter(player, activeChar.getLocation(), activeChar, MessageTable.Messages[1777].getMessage());
					return true;
				}
				
				for (L2PcInstance member : clan.getOnlineMembers(0))
				{
					/* MessageTable
					teleportCharacter(member, activeChar.getLocation(), activeChar, "Your clan is being teleported by an Admin.");
					 */
					teleportCharacter(member, activeChar.getLocation(), activeChar, MessageTable.Messages[1781].getMessage());
				}
			}
			catch (Exception e)
			{
				_log.log(Level.WARNING, "", e);
			}
		}
		else if (command.startsWith("admin_goto_char_menu"))
		{
			try
			{
				String targetName = command.substring(21);
				L2PcInstance player = L2World.getInstance().getPlayer(targetName);
				activeChar.setInstanceId(player.getInstanceId());
				teleportToCharacter(activeChar, player);
			}
			catch (StringIndexOutOfBoundsException e)
			{
			}
		}
		else if (command.equals("admin_kill_menu"))
		{
			handleKill(activeChar);
		}
		else if (command.startsWith("admin_kick_menu"))
		{
			StringTokenizer st = new StringTokenizer(command);
			if (st.countTokens() > 1)
			{
				st.nextToken();
				String player = st.nextToken();
				L2PcInstance plyr = L2World.getInstance().getPlayer(player);
				String text;
				if (plyr != null)
				{
					plyr.logout();
					/* MessageTable
					text = "You kicked " + plyr.getName() + " from the game.";
					 */
					text = MessageTable.Messages[1782].getExtra(1) + plyr.getName() + MessageTable.Messages[1782].getExtra(2);
				}
				else
				{
					/* MessageTable
					text = "Player " + player + " was not found in the game.";
					 */
					text = MessageTable.Messages[1783].getExtra(1) + player + MessageTable.Messages[1783].getExtra(2);
				}
				activeChar.sendMessage(text);
			}
			showMainPage(activeChar);
		}
		else if (command.startsWith("admin_ban_menu"))
		{
			StringTokenizer st = new StringTokenizer(command);
			if (st.countTokens() > 1)
			{
				String subCommand = "admin_ban_char";
				if (!AdminTable.getInstance().hasAccess(subCommand, activeChar.getAccessLevel()))
				{
					/* MessageTable.Messages[1784]
					activeChar.sendMessage("You don't have the access right to use this command!");
					 */
					activeChar.sendMessage(1784);
					_log.warning("Character " + activeChar.getName() + " tryed to use admin command " + subCommand + ", but have no access to it!");
					return false;
				}
				IAdminCommandHandler ach = AdminCommandHandler.getInstance().getHandler(subCommand);
				ach.useAdminCommand(subCommand + command.substring(14), activeChar);
			}
			showMainPage(activeChar);
		}
		else if (command.startsWith("admin_unban_menu"))
		{
			StringTokenizer st = new StringTokenizer(command);
			if (st.countTokens() > 1)
			{
				String subCommand = "admin_unban_char";
				if (!AdminTable.getInstance().hasAccess(subCommand, activeChar.getAccessLevel()))
				{
					/* MessageTable.Messages[1784]
					activeChar.sendMessage("You don't have the access right to use this command!");
					 */
					activeChar.sendMessage(1784);
					_log.warning("Character " + activeChar.getName() + " tryed to use admin command " + subCommand + ", but have no access to it!");
					return false;
				}
				IAdminCommandHandler ach = AdminCommandHandler.getInstance().getHandler(subCommand);
				ach.useAdminCommand(subCommand + command.substring(16), activeChar);
			}
			showMainPage(activeChar);
		}
		return true;
	}
	
	@Override
	public String[] getAdminCommandList()
	{
		return ADMIN_COMMANDS;
	}
	
	private void handleKill(L2PcInstance activeChar)
	{
		handleKill(activeChar, null);
	}
	
	private void handleKill(L2PcInstance activeChar, String player)
	{
		L2Object obj = activeChar.getTarget();
		L2Character target = (L2Character) obj;
		String filename = "main_menu.htm";
		if (player != null)
		{
			L2PcInstance plyr = L2World.getInstance().getPlayer(player);
			if (plyr != null)
			{
				target = plyr;
				/* MessageTable
				activeChar.sendMessage("You killed " + plyr.getName());
				 */
				activeChar.sendMessage(MessageTable.Messages[1785].getExtra(1) + plyr.getName() + MessageTable.Messages[1785].getExtra(2));
			}
		}
		if (target != null)
		{
			if (target instanceof L2PcInstance)
			{
				target.reduceCurrentHp(target.getMaxHp() + target.getMaxCp() + 1, activeChar, null);
				filename = "charmanage.htm";
			}
			else if (Config.L2JMOD_CHAMPION_ENABLE && target.isChampion())
			{
				target.reduceCurrentHp((target.getMaxHp() * Config.L2JMOD_CHAMPION_HP) + 1, activeChar, null);
			}
			else
			{
				target.reduceCurrentHp(target.getMaxHp() + 1, activeChar, null);
			}
		}
		else
		{
			activeChar.sendPacket(SystemMessageId.INCORRECT_TARGET);
		}
		AdminHtml.showAdminHtml(activeChar, filename);
	}
	
	private void teleportCharacter(L2PcInstance player, Location loc, L2PcInstance activeChar, String message)
	{
		if (player != null)
		{
			player.sendMessage(message);
			player.teleToLocation(loc, true);
		}
		showMainPage(activeChar);
	}
	
	private void teleportToCharacter(L2PcInstance activeChar, L2Object target)
	{
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
		{
			player = (L2PcInstance) target;
		}
		else
		{
			activeChar.sendPacket(SystemMessageId.INCORRECT_TARGET);
			return;
		}
		if (player.getObjectId() == activeChar.getObjectId())
		{
			player.sendPacket(SystemMessageId.CANNOT_USE_ON_YOURSELF);
		}
		else
		{
			activeChar.setInstanceId(player.getInstanceId());
			activeChar.teleToLocation(player.getLocation(), true);
			/* MessageTable
			activeChar.sendMessage("You're teleporting yourself to character " + player.getName());
			 */
			activeChar.sendMessage(MessageTable.Messages[1786].getExtra(1) + player.getName() + MessageTable.Messages[1786].getExtra(2));
		}
		showMainPage(activeChar);
	}
	
	/**
	 * @param activeChar
	 */
	private void showMainPage(L2PcInstance activeChar)
	{
		AdminHtml.showAdminHtml(activeChar, "charmanage.htm");
	}
}
