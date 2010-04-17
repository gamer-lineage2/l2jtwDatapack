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
package handlers.bypasshandlers;

import com.l2jserver.Config;
import com.l2jserver.gameserver.datatables.SkillTreeTable;
import com.l2jserver.gameserver.handler.IBypassHandler;
import com.l2jserver.gameserver.model.L2Object.InstanceType;
import com.l2jserver.gameserver.model.actor.L2Character;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2NpcInstance;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.base.ClassId;
import com.l2jserver.gameserver.network.serverpackets.ActionFailed;
import com.l2jserver.gameserver.network.serverpackets.NpcHtmlMessage;
import com.l2jserver.gameserver.datatables.MessageTable;
public class SkillList implements IBypassHandler
{
	private static final String[] COMMANDS =
	{
		"SkillList"
	};

	public boolean useBypass(String command, L2PcInstance activeChar, L2Character target)
	{
		if (!target.isInstanceType(InstanceType.L2NpcInstance))
			return false;

		if (Config.ALT_GAME_SKILL_LEARN)
		{
			try
			{
				String id = command.substring(9).trim();
				if (id.length() != 0)
				{
					activeChar.setSkillLearningClassId(ClassId.values()[Integer.parseInt(id)]);
					L2NpcInstance.showSkillList(activeChar, (L2Npc)target, ClassId.values()[Integer.parseInt(id)]);
				}
				else
				{
					boolean own_class = false;

					ClassId[] classesToTeach = ((L2NpcInstance)target).getClassesToTeach();
					if (classesToTeach != null)
					{
						for (ClassId cid : classesToTeach)
						{
							if (cid.equalsOrChildOf(activeChar.getClassId()))
							{
								own_class = true;
								break;
							}
						}
					}

					String text = "<html><body><center>"+MessageTable.Messages[1061].getMessage()+"</center><br>";

					if (!own_class)
					{
						String charType = activeChar.getClassId().isMage() ? MessageTable.Messages[1062].getMessage() : MessageTable.Messages[1063].getMessage();
						text +=
							MessageTable.Messages[1064].getMessage()+"<br>"+
							MessageTable.Messages[1065].getMessage()+"<br>"+
							MessageTable.Messages[1066].getMessage()+"<br>"+
							MessageTable.Messages[1067].getMessage()+ charType +MessageTable.Messages[1068].getMessage()+"<br>";
					}

					// make a list of classes
					if (classesToTeach != null)
					{
						int count = 0;
						ClassId classCheck = activeChar.getClassId();

						while ((count == 0) && (classCheck != null))
						{
							for (ClassId cid : classesToTeach)
							{
								if (cid.level() > classCheck.level()) 
									continue;

								if (SkillTreeTable.getInstance().getAvailableSkills(activeChar, cid).length == 0)
									continue;

								text += "<a action=\"bypass -h npc_%objectId%_SkillList "+cid.getId()+"\">"+MessageTable.Messages[1069].getExtra(1)+cid+MessageTable.Messages[1069].getExtra(2)+"</a><br>\n";
								count++;
							}
							classCheck = classCheck.getParent();
						}
						classCheck = null;
					}
					else
						text += MessageTable.Messages[1070].getMessage()+"<br>";

					text += "</body></html>";

					NpcHtmlMessage html = new NpcHtmlMessage(((L2Npc)target).getObjectId());
					html.setHtml(text);
					html.replace("%objectId%", String.valueOf(((L2Npc)target).getObjectId()));
					activeChar.sendPacket(html);

					activeChar.sendPacket(ActionFailed.STATIC_PACKET);
				}
			}
			catch (Exception e)
			{
				_log.info("Exception in " + getClass().getSimpleName());
			}
		}
		else
		{
			activeChar.setSkillLearningClassId(activeChar.getClassId());
			L2NpcInstance.showSkillList(activeChar, (L2Npc)target, activeChar.getClassId());
		}
		return true;
	}

	public String[] getBypassList()
	{
		return COMMANDS;
	}
}