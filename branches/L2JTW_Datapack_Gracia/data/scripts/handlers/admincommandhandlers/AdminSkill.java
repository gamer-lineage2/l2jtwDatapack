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
package handlers.admincommandhandlers;

import java.util.StringTokenizer;
import java.util.logging.Logger;

import com.l2jserver.Config;
import com.l2jserver.gameserver.datatables.SkillTable;
import com.l2jserver.gameserver.datatables.SkillTreeTable;
import com.l2jserver.gameserver.handler.IAdminCommandHandler;
import com.l2jserver.gameserver.model.L2Object;
import com.l2jserver.gameserver.model.L2Skill;
import com.l2jserver.gameserver.model.L2SkillLearn;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.network.SystemMessageId;
import com.l2jserver.gameserver.network.serverpackets.NpcHtmlMessage;
import com.l2jserver.gameserver.network.serverpackets.PledgeSkillList;
import com.l2jserver.gameserver.network.serverpackets.SystemMessage;
import com.l2jserver.util.StringUtil;
import com.l2jserver.gameserver.datatables.MessageTable;

/**
 * This class handles following admin commands:
 * - show_skills
 * - remove_skills
 * - skill_list
 * - skill_index
 * - add_skill
 * - remove_skill
 * - get_skills
 * - reset_skills
 * - give_all_skills
 * - remove_all_skills
 * - add_clan_skills
 *
 * @version $Revision: 1.2.4.7 $ $Date: 2005/04/11 10:06:02 $
 */
public class AdminSkill implements IAdminCommandHandler
{
	private static Logger _log = Logger.getLogger(AdminSkill.class.getName());
	
	private static final String[] ADMIN_COMMANDS =
	{
		"admin_show_skills",
		"admin_remove_skills",
		"admin_skill_list",
		"admin_skill_index",
		"admin_add_skill",
		"admin_remove_skill",
		"admin_get_skills",
		"admin_reset_skills",
		"admin_give_all_skills",
		"admin_remove_all_skills",
		"admin_add_clan_skill"
	};
	
	private static L2Skill[] adminSkills;
	
	public boolean useAdminCommand(String command, L2PcInstance activeChar)
	{
		if (command.equals("admin_show_skills"))
			showMainPage(activeChar);
		else if (command.startsWith("admin_remove_skills"))
		{
			try
			{
				String val = command.substring(20);
				removeSkillsPage(activeChar, Integer.parseInt(val));
			}
			catch (StringIndexOutOfBoundsException e)
			{
			}
		}
		else if (command.startsWith("admin_skill_list"))
		{
			AdminHelpPage.showHelpPage(activeChar, "skills.htm");
		}
		else if (command.startsWith("admin_skill_index"))
		{
			try
			{
				String val = command.substring(18);
				AdminHelpPage.showHelpPage(activeChar, "skills/" + val + ".htm");
			}
			catch (StringIndexOutOfBoundsException e)
			{
			}
		}
		else if (command.startsWith("admin_add_skill"))
		{
			try
			{
				String val = command.substring(15);
				adminAddSkill(activeChar, val);
			}
			catch (Exception e)
			{
				activeChar.sendMessage("Usage: //add_skill <skill_id> <level>");
			}
		}
		else if (command.startsWith("admin_remove_skill"))
		{
			try
			{
				String id = command.substring(19);
				int idval = Integer.parseInt(id);
				adminRemoveSkill(activeChar, idval);
			}
			catch (Exception e)
			{
				activeChar.sendMessage("Usage: //remove_skill <skill_id>");
			}
		}
		else if (command.equals("admin_get_skills"))
		{
			adminGetSkills(activeChar);
		}
		else if (command.equals("admin_reset_skills"))
		{
			adminResetSkills(activeChar);
		}
		else if (command.equals("admin_give_all_skills"))
		{
			adminGiveAllSkills(activeChar);
		}
		
		else if (command.equals("admin_remove_all_skills"))
		{
			if (activeChar.getTarget() instanceof L2PcInstance)
			{
				L2PcInstance player = (L2PcInstance) activeChar.getTarget();
				for (L2Skill skill : player.getAllSkills())
					player.removeSkill(skill);
				activeChar.sendMessage(MessageTable.Messages[1827].getExtra(1) + player.getName() + MessageTable.Messages[1827].getExtra(2));
				player.sendMessage(1828);
				player.sendSkillList();
				player.broadcastUserInfo();
			}
		}
		else if (command.startsWith("admin_add_clan_skill"))
		{
			try
			{
				String[] val = command.split(" ");
				adminAddClanSkill(activeChar, Integer.parseInt(val[1]), Integer.parseInt(val[2]));
			}
			catch (Exception e)
			{
				activeChar.sendMessage("Usage: //add_clan_skill <skill_id> <level>");
			}
		}
		return true;
	}
	
	/**
	 * This function will give all the skills that the target can learn at his/her level
	 * @param activeChar: the gm char
	 */
	private void adminGiveAllSkills(L2PcInstance activeChar)
	{
		L2Object target = activeChar.getTarget();
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
			player = (L2PcInstance) target;
		else
		{
			activeChar.sendPacket(new SystemMessage(SystemMessageId.INCORRECT_TARGET));
			return;
		}
		boolean countUnlearnable = true;
		int unLearnable = 0;
		int skillCounter = 0;
		L2SkillLearn[] skills = SkillTreeTable.getInstance().getAvailableSkills(player, player.getClassId());
		while (skills.length > unLearnable)
		{
			for (L2SkillLearn s : skills)
			{
				L2Skill sk = SkillTable.getInstance().getInfo(s.getId(), s.getLevel());
				if (sk == null )
				{
					if (countUnlearnable)
						unLearnable++;
					continue;
				}
				if (player.getSkillLevel(sk.getId()) == -1)
					skillCounter++;
				player.addSkill(sk, true);
			}
			countUnlearnable = false;
			skills = SkillTreeTable.getInstance().getAvailableSkills(player, player.getClassId());
		}
		//Notify player and admin
		player.sendMessage(MessageTable.Messages[1829].getExtra(1) + skillCounter + MessageTable.Messages[1829].getExtra(2));
		activeChar.sendMessage(MessageTable.Messages[1830].getExtra(1) + skillCounter + MessageTable.Messages[1830].getExtra(2) + player.getName());
		player.sendSkillList();
	}
	
	public String[] getAdminCommandList()
	{
		return ADMIN_COMMANDS;
	}
	
	private void removeSkillsPage(L2PcInstance activeChar, int page)
	{ //TODO: Externalize HTML
		L2Object target = activeChar.getTarget();
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
			player = (L2PcInstance) target;
		else
		{
			activeChar.sendPacket(new SystemMessage(SystemMessageId.TARGET_IS_INCORRECT));
			return;
		}
		
		L2Skill[] skills = player.getAllSkills();
		
		int maxSkillsPerPage = 10;
		int maxPages = skills.length / maxSkillsPerPage;
		if (skills.length > maxSkillsPerPage * maxPages)
			maxPages++;
		
		if (page > maxPages)
			page = maxPages;
		
		int skillsStart = maxSkillsPerPage * page;
		int skillsEnd = skills.length;
		if (skillsEnd - skillsStart > maxSkillsPerPage)
			skillsEnd = skillsStart + maxSkillsPerPage;
		
		NpcHtmlMessage adminReply = new NpcHtmlMessage(5);
                final StringBuilder replyMSG = StringUtil.startAppend(
                        500 + maxPages * 50 + (skillsEnd - skillsStart + 1) * 50,
                        "<html><body>" +
                        "<table width=260><tr>" +
                        "<td width=40><button value=\""+MessageTable.Messages[1831].getMessage()+"\" action=\"bypass -h admin_admin\" width=40 height=15 back=\"L2UI_ct1.button_df\" fore=\"L2UI_ct1.button_df\"></td>" +
                        "<td width=180><center>"+MessageTable.Messages[1832].getMessage()+"</center></td>" +
                        "<td width=40><button value=\""+MessageTable.Messages[1833].getMessage()+"\" action=\"bypass -h admin_show_skills\" width=40 height=15 back=\"L2UI_ct1.button_df\" fore=\"L2UI_ct1.button_df\"></td>" +
                        "</tr></table>" +
                        "<br><br>" +
                        "<center>"+MessageTable.Messages[1834].getMessage()+"<font color=\"LEVEL\">",
                        player.getName(),
                        "</font></center>" +
                        "<br><table width=270><tr><td>"+MessageTable.Messages[1835].getMessage(),
                        String.valueOf(player.getLevel()),
                        " ",
                        player.getTemplate().className,
                        "</td></tr></table>" +
                        "<br><table width=270><tr><td>"+MessageTable.Messages[1836].getMessage()+"</td></tr>" +
                        "<tr><td>"+MessageTable.Messages[1837].getMessage()+"</td></tr></table>" +
                        "<br><center>"+MessageTable.Messages[1838].getMessage()+"</center>" +
                        "<br>" +
                        "<center><table width=270><tr>"
                        );

                for (int x = 0; x < maxPages; x++)
		{
			int pagenr = x + 1;
                        StringUtil.append(replyMSG,
                                "<td><a action=\"bypass -h admin_remove_skills ",
                                String.valueOf(x),
                                "\">"+MessageTable.Messages[1839].getMessage(),
                                String.valueOf(pagenr),
                                MessageTable.Messages[1839].getExtra(1)+"</a></td>"
                                );
		}

                replyMSG.append(
                        "</tr></table></center>" +
                        "<br><table width=270>" +
                        "<tr><td width=80>"+MessageTable.Messages[1840].getExtra(1)+"</td><td width=60>"+MessageTable.Messages[1840].getExtra(2)+"</td><td width=40>"+MessageTable.Messages[1840].getExtra(3)+"</td></tr>"
                        );

                for (int i = skillsStart; i < skillsEnd; i++) {
                    StringUtil.append(replyMSG,
                            "<tr><td width=80><a action=\"bypass -h admin_remove_skill ",
                            String.valueOf(skills[i].getId()),
                            "\">",
                            skills[i].getName(),
                            "</a></td><td width=60>",
                            String.valueOf(skills[i].getLevel()),
                            "</td><td width=40>",
                            String.valueOf(skills[i].getId()),
                            "</td></tr>"
                            );
                }

		replyMSG.append(
                        "</table>" +
                        "<br><center><table>" +
                        MessageTable.Messages[1841].getMessage() +
                        "<tr><td>"+MessageTable.Messages[1840].getExtra(3)+"</td>" +
                        "<td><edit var=\"id_to_remove\" width=110></td></tr>" +
                        "</table></center>" +
                        "<center><button value=\""+MessageTable.Messages[1842].getMessage()+"\" action=\"bypass -h admin_remove_skill $id_to_remove\" width=110 height=15 back=\"L2UI_ct1.button_df\" fore=\"L2UI_ct1.button_df\"></center>" +
                        "<br><center><button value=\""+MessageTable.Messages[1833].getMessage()+"\" action=\"bypass -h admin_current_player\" width=40 height=15 back=\"L2UI_ct1.button_df\" fore=\"L2UI_ct1.button_df\"></center>" +
                        "</body></html>");
		adminReply.setHtml(replyMSG.toString());
		activeChar.sendPacket(adminReply);
	}
	
	private void showMainPage(L2PcInstance activeChar)
	{
		L2Object target = activeChar.getTarget();
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
			player = (L2PcInstance) target;
		else
		{
			activeChar.sendPacket(new SystemMessage(SystemMessageId.INCORRECT_TARGET));
			return;
		}
		NpcHtmlMessage adminReply = new NpcHtmlMessage(5);
		adminReply.setFile(activeChar.getHtmlPrefix(), "data/html/admin/charskills.htm");
		adminReply.replace("%name%", player.getName());
		adminReply.replace("%level%", String.valueOf(player.getLevel()));
		adminReply.replace("%class%", player.getTemplate().className);
		activeChar.sendPacket(adminReply);
	}
	
	private void adminGetSkills(L2PcInstance activeChar)
	{
		L2Object target = activeChar.getTarget();
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
			player = (L2PcInstance) target;
		else
		{
			activeChar.sendPacket(new SystemMessage(SystemMessageId.INCORRECT_TARGET));
			return;
		}
		if (player.getName().equals(activeChar.getName()))
			player.sendPacket(new SystemMessage(SystemMessageId.CANNOT_USE_ON_YOURSELF));
		else
		{
			L2Skill[] skills = player.getAllSkills();
			adminSkills = activeChar.getAllSkills();
			for (L2Skill skill: adminSkills)
				activeChar.removeSkill(skill);
			for (L2Skill skill: skills)
				activeChar.addSkill(skill, true);
			activeChar.sendMessage(MessageTable.Messages[1843].getExtra(1) + player.getName() + MessageTable.Messages[1843].getExtra(2));
			activeChar.sendSkillList();
		}
		showMainPage(activeChar);
	}
	
	private void adminResetSkills(L2PcInstance activeChar)
	{
		L2Object target = activeChar.getTarget();
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
			player = (L2PcInstance) target;
		else
		{
			activeChar.sendPacket(new SystemMessage(SystemMessageId.INCORRECT_TARGET));
			return;
		}
		if (adminSkills == null)
			activeChar.sendMessage("You must get the skills of someone in order to do this.");
		else
		{
			L2Skill[] skills = player.getAllSkills();
			for (L2Skill skill: skills)
				player.removeSkill(skill);
			for (L2Skill skill: activeChar.getAllSkills())
				player.addSkill(skill, true);
			for (L2Skill skill: skills)
				activeChar.removeSkill(skill);
			for (L2Skill skill: adminSkills)
				activeChar.addSkill(skill, true);
			player.sendMessage(MessageTable.Messages[1844].getExtra(1) + activeChar.getName() + MessageTable.Messages[1844].getExtra(2));
			activeChar.sendMessage(1845);
			adminSkills = null;
			activeChar.sendSkillList();
		}
		showMainPage(activeChar);
	}
	
	private void adminAddSkill(L2PcInstance activeChar, String val)
	{
		L2Object target = activeChar.getTarget();
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
			player = (L2PcInstance) target;
		else
		{
			showMainPage(activeChar);
			activeChar.sendPacket(new SystemMessage(SystemMessageId.INCORRECT_TARGET));
			return;
		}
		StringTokenizer st = new StringTokenizer(val);
		if (st.countTokens() != 2)
		{
			showMainPage(activeChar);
		}
		else
		{
			L2Skill skill = null;
			try
			{
				String id = st.nextToken();
				String level = st.nextToken();
				int idval = Integer.parseInt(id);
				int levelval = Integer.parseInt(level);
				skill = SkillTable.getInstance().getInfo(idval, levelval);
			}
			catch (Exception e)
			{
			}
			if (skill != null)
			{
				String name = skill.getName();
				player.sendMessage(MessageTable.Messages[1846].getExtra(1) + name + MessageTable.Messages[1846].getExtra(2));
				player.addSkill(skill, true);
				//Admin information
				activeChar.sendMessage(MessageTable.Messages[1847].getExtra(1) + name + MessageTable.Messages[1847].getExtra(2) + player.getName() + MessageTable.Messages[1847].getExtra(3));
				if (Config.DEBUG)
					_log.fine("[GM]" + activeChar.getName() + " gave skill " + name + " to " + player.getName() + ".");
				activeChar.sendSkillList();
			}
			else
				activeChar.sendMessage(1848);
			showMainPage(activeChar); //Back to start
		}
	}
	
	private void adminRemoveSkill(L2PcInstance activeChar, int idval)
	{
		L2Object target = activeChar.getTarget();
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
			player = (L2PcInstance) target;
		else
		{
			activeChar.sendPacket(new SystemMessage(SystemMessageId.INCORRECT_TARGET));
			return;
		}
		L2Skill skill = SkillTable.getInstance().getInfo(idval, player.getSkillLevel(idval));
		if (skill != null)
		{
			String skillname = skill.getName();
			player.sendMessage(MessageTable.Messages[1849].getExtra(1) + skillname + MessageTable.Messages[1849].getExtra(2));
			player.removeSkill(skill);
			//Admin information	
			activeChar.sendMessage(MessageTable.Messages[1850].getExtra(1) + skillname + MessageTable.Messages[1850].getExtra(2) + player.getName() + MessageTable.Messages[1850].getExtra(3));
			if (Config.DEBUG)
				_log.fine("[GM]" + activeChar.getName() + " removed skill " + skillname + " from " + player.getName() + ".");
			activeChar.sendSkillList();
		}
		else
			activeChar.sendMessage(1848);
		removeSkillsPage(activeChar, 0); //Back to previous page	
	}
	
	private void adminAddClanSkill(L2PcInstance activeChar, int id, int level)
	{
		L2Object target = activeChar.getTarget();
		L2PcInstance player = null;
		if (target instanceof L2PcInstance)
			player = (L2PcInstance) target;
		else
		{
			showMainPage(activeChar);
			activeChar.sendPacket(new SystemMessage(SystemMessageId.INCORRECT_TARGET));
			return;
		}
		if (!player.isClanLeader())
		{
			activeChar.sendPacket(new SystemMessage(SystemMessageId.S1_IS_NOT_A_CLAN_LEADER).addString(player.getName()));
			showMainPage(activeChar);
			return;
		}
		if ((id < 370) || (id > 391) || (level < 1) || (level > 3))
		{
			activeChar.sendMessage("Usage: //add_clan_skill <skill_id> <level>");
			showMainPage(activeChar);
			return;
		}
		else
		{
			L2Skill skill = SkillTable.getInstance().getInfo(id, level);
			if (skill != null)
			{
				String skillname = skill.getName();
				SystemMessage sm = new SystemMessage(SystemMessageId.CLAN_SKILL_S1_ADDED);
				sm.addSkillName(skill);
				player.sendPacket(sm);
				player.getClan().broadcastToOnlineMembers(sm);
				player.getClan().addNewSkill(skill);
				activeChar.sendMessage(MessageTable.Messages[1851].getExtra(1) + skillname + MessageTable.Messages[1851].getExtra(2) + player.getClan().getName() + MessageTable.Messages[1851].getExtra(3));
				
				activeChar.getClan().broadcastToOnlineMembers(new PledgeSkillList(activeChar.getClan()));
				for (L2PcInstance member : activeChar.getClan().getOnlineMembers(0))
				{
					member.sendSkillList();
				}
				
				showMainPage(activeChar);
				return;
			}
			else
			{
				activeChar.sendMessage(1848);
				return;
			}
			
		}
	}
	
}
