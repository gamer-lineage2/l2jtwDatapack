/*
 * $Header: AdminTest.java, 25/07/2005 17:15:21 luisantonioa Exp $
 *
 * $Author: luisantonioa $
 * $Date: 25/07/2005 17:15:21 $
 * $Revision: 1 $
 * $Log: AdminTest.java,v $
 * Revision 1  25/07/2005 17:15:21  luisantonioa
 * Added copyright notice
 *
 *
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
package handlers.admincommandhandlers;

import java.io.File;

import javax.script.ScriptException;

import com.l2jserver.gameserver.handler.IAdminCommandHandler;
import com.l2jserver.gameserver.instancemanager.QuestManager;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.scripting.L2ScriptEngineManager;
import com.l2jserver.gameserver.datatables.MessageTable;
import com.l2jserver.gameserver.model.L2CoreMessage;

public class AdminQuest implements IAdminCommandHandler
{
	private static final String[] ADMIN_COMMANDS =
	{
		"admin_quest_reload",
		"admin_script_load"
	};
	
	/**
	 * 
	 * @see com.l2jserver.gameserver.handler.IAdminCommandHandler#useAdminCommand(java.lang.String, com.l2jserver.gameserver.model.actor.instance.L2PcInstance)
	 */
	public boolean useAdminCommand(String command, L2PcInstance activeChar)
	{
		if (activeChar == null)
			return false;
		
		// syntax will either be:
		//                           //quest_reload <id>
		//                           //quest_reload <questName>
		// The questName MUST start with a non-numeric character for this to work, 
		// regardless which of the two formats is used.
		// Example:  //quest_reload orc_occupation_change_1
		// Example:  //quest_reload chests
		// Example:  //quest_reload SagasSuperclass
		// Example:  //quest_reload 12
		if (command.startsWith("admin_quest_reload"))
		{
			String[] parts = command.split(" ");
			if (parts.length < 2)
			{
				activeChar.sendMessage(281);
			}
			else
			{
				// try the first param as id
				try
				{
					int questId = Integer.parseInt(parts[1]);
					if (QuestManager.getInstance().reload(questId))
					{
						activeChar.sendMessage(248);
					}
					else
					{
						activeChar.sendMessage(247);
					}
				}
				catch (NumberFormatException e)
				{
					if (QuestManager.getInstance().reload(parts[1]))
					{
						activeChar.sendMessage(248);
					}
					else
					{
						activeChar.sendMessage(247);
					}
				}
			}
		}
		// script load should NOT be used in place of reload.  If a script is already loaded
		// successfully, quest_reload ought to be used.  The script_load command should only
		// be used for scripts that failed to load altogether (eg. due to errors) or that 
		// did not at all exist during server boot.  Using script_load to re-load a previously
		// loaded script may cause unpredictable script flow, minor loss of data, and more.
		// This provides a way to load new scripts without having to reboot the server.
		else if (command.startsWith("admin_script_load"))
		{
			String[] parts = command.split(" ");
			if (parts.length < 2)
			{
				//activeChar.sendMessage("Example: //script_load <questFolder>/<questSubFolders...>/<filename>.<ext> ");
				activeChar.sendMessage(117);
			}
			else
			{
				File file = new File(L2ScriptEngineManager.SCRIPT_FOLDER, parts[1]);
				if (file.isFile())
				{
					try
					{
						L2ScriptEngineManager.getInstance().executeScript(file);
					}
					catch (ScriptException e)
					{
						L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[118]);
						cm.addString(parts[1]);
						cm.sendMessage(activeChar);
						L2ScriptEngineManager.getInstance().reportScriptFileError(file, e);
					}
					catch (Exception e)
					{
						L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[118]);
						cm.addString(parts[1]);
						cm.sendMessage(activeChar);
					}
				}
				else
				{
					L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[119]);
					cm.addString(parts[1]);
					cm.sendMessage(activeChar);
				}
			}
			
		}
		return true;
	}
	
	/**
	 * 
	 * @see com.l2jserver.gameserver.handler.IAdminCommandHandler#getAdminCommandList()
	 */
	public String[] getAdminCommandList()
	{
		return ADMIN_COMMANDS;
	}
	
}
