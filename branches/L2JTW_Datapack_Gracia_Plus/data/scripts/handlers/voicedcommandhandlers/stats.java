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
package handlers.voicedcommandhandlers;

import java.util.Iterator;

import com.l2jserver.gameserver.handler.IVoicedCommandHandler;
import com.l2jserver.gameserver.model.L2World;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.network.serverpackets.NpcHtmlMessage;
import com.l2jserver.util.StringUtil;
import com.l2jserver.gameserver.datatables.MessageTable;

/**
 *
 *
 */
public class stats implements IVoicedCommandHandler
{
	private static final String[] VOICED_COMMANDS =
	{
		"stats"
	};
	
	/**
	 * 
	 * @see com.l2jserver.gameserver.handler.IVoicedCommandHandler#useVoicedCommand(java.lang.String, com.l2jserver.gameserver.model.actor.instance.L2PcInstance, java.lang.String)
	 */
	public boolean useVoicedCommand(String command, L2PcInstance activeChar, String params)
	{
		if (command.equalsIgnoreCase("stats"))
		{
			L2PcInstance pc = L2World.getInstance().getPlayer(params);
			if (pc != null)
			{
				NpcHtmlMessage adminReply = new NpcHtmlMessage(5);
                                final StringBuilder replyMSG = StringUtil.startAppend(
                                        300 + pc.kills.size() * 50,
                                        "<html><body>" +
                                        "<center><font color=\"LEVEL\">[ "+MessageTable.Messages[1208].getMessage()+" ]</font></center><br>" +
                                        "<br>"+MessageTable.Messages[1209].getMessage()+"<font color=\"LEVEL\">",
                                        pc.getName(),
                                        "</font><br>" +
                                        MessageTable.Messages[1210].getMessage()+"<font color=\"FF0000\">",
                                        String.valueOf(pc.kills.size()),
                                        "</font><br>" +
                                        "<br>"+MessageTable.Messages[1211].getMessage()+"<br>"
                                        );
				
				Iterator<String> it = pc.kills.iterator();

                                while (it.hasNext()) {
                                    StringUtil.append(replyMSG,
                                            "<font color=\"FF0000\">",
                                            it.next(),
                                            "</font><br>");
				}
                                
				replyMSG.append("</body></html>");
				
				adminReply.setHtml(replyMSG.toString());
				activeChar.sendPacket(adminReply);
			}
			
		}
		return true;
	}
	
	/**
	 * 
	 * @see com.l2jserver.gameserver.handler.IVoicedCommandHandler#getVoicedCommandList()
	 */
	public String[] getVoicedCommandList()
	{
		return VOICED_COMMANDS;
	}
	
}
