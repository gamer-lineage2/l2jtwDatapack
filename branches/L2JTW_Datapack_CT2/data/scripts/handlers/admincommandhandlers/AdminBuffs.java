package handlers.admincommandhandlers;

import java.util.StringTokenizer;

import net.sf.l2j.gameserver.handler.IAdminCommandHandler;
import net.sf.l2j.gameserver.model.L2Effect;
import net.sf.l2j.gameserver.model.L2World;
import net.sf.l2j.gameserver.model.actor.L2Character;
import net.sf.l2j.gameserver.model.actor.instance.L2PcInstance;
import net.sf.l2j.gameserver.network.serverpackets.NpcHtmlMessage;
import net.sf.l2j.gameserver.util.GMAudit;
import net.sf.l2j.gameserver.datatables.MessageTable;
import net.sf.l2j.gameserver.model.L2CoreMessage;
import net.sf.l2j.gameserver.util.StringUtil;

public class AdminBuffs implements IAdminCommandHandler
{
	
	private static final String[] ADMIN_COMMANDS =
	{
		"admin_getbuffs",
		"admin_stopbuff",
		"admin_stopallbuffs",
		"admin_areacancel"
	};
	
	public boolean useAdminCommand(String command, L2PcInstance activeChar)
	{
		String target = (activeChar.getTarget() != null) ? activeChar.getTarget().getName() : "no-target";
		GMAudit.auditGMAction(activeChar.getName(), command, target, "");
		
		if (command.startsWith("admin_getbuffs"))
		{
			StringTokenizer st = new StringTokenizer(command, " ");
			command = st.nextToken();
			
			if (st.hasMoreTokens())
			{
				L2PcInstance player = null;
				String playername = st.nextToken();
				
				try
				{
					player = L2World.getInstance().getPlayer(playername);
				}
				catch (Exception e)
				{
				}
				
				if (player != null)
				{
					showBuffs(player, activeChar);
					return true;
				}
				else
				{
					L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[138]);
					cm.addString(playername);
					cm.sendMessage(activeChar);
					return false;
				}
			}
			else if ((activeChar.getTarget() != null) && (activeChar.getTarget() instanceof L2PcInstance))
			{
				showBuffs((L2PcInstance) activeChar.getTarget(), activeChar);
				return true;
			}
			else
				return true;
		}
		
		else if (command.startsWith("admin_stopbuff"))
		{
			try
			{
				StringTokenizer st = new StringTokenizer(command, " ");
				
				st.nextToken();
				String playername = st.nextToken();
				int SkillId = Integer.parseInt(st.nextToken());
				
				removeBuff(activeChar, playername, SkillId);
				return true;
			}
			catch (Exception e)
			{
				L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[156]);
				cm.addString(e.getMessage());
				cm.sendMessage(activeChar);
				activeChar.sendMessage(157);
				return false;
			}
		}
		else if (command.startsWith("admin_stopallbuffs"))
		{
			StringTokenizer st = new StringTokenizer(command, " ");
			st.nextToken();
			String playername = st.nextToken();
			if (playername != null)
			{
				removeAllBuffs(activeChar, playername);
				return true;
			}
			else
				return false;
			
		}
		else if (command.startsWith("admin_areacancel"))
		{
			StringTokenizer st = new StringTokenizer(command, " ");
			st.nextToken();
			String val = st.nextToken();
			try
			{
				int radius = Integer.parseInt(val);
				
				for (L2Character knownChar : activeChar.getKnownList().getKnownCharactersInRadius(radius))
				{
					if ((knownChar instanceof L2PcInstance) && !(knownChar.equals(activeChar)))
						knownChar.stopAllEffects();
				}
				
				L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[159]);
				cm.addNumber(radius);
				cm.sendMessage(activeChar);
				return true;
			}
			catch (NumberFormatException e)
			{
				activeChar.sendMessage(176);
				return false;
			}
		}
		else
			return true;
		
	}
	
	public String[] getAdminCommandList()
	{
		return ADMIN_COMMANDS;
	}
	
	public void showBuffs(L2PcInstance player, L2PcInstance activeChar)
	{
		final L2Effect[] effects = player.getAllEffects();
		final StringBuilder html = StringUtil.startAppend(500 + effects.length * 200,
				"<html><center><font color=\"LEVEL\">"+MessageTable.Messages[207].getMessage() +
				player.getName()+
				"</font><center><br>" +
				"<table>" +
				"<tr><td width=200>"+MessageTable.Messages[556].getMessage()+"</td><td width=70>"+MessageTable.Messages[557].getMessage()+"</td></tr>"
		);
		
		for (L2Effect e : effects) {
			if (e != null) {
				StringUtil.append(html,
						"<tr><td>",
						e.getSkill().getName(),
						"</td><td><button value=\""+MessageTable.Messages[1176].getMessage()+"\" action=\"bypass -h admin_stopbuff ",
						player.getName(),
						" ",
						String.valueOf(e.getSkill().getId()),
						"\" width=60 height=15 back=\"L2UI_ct1.button_df\" fore=\"L2UI_ct1.button_df\"></td></tr>"
				);
			}
		}

		StringUtil.append(html,
				"</table><br>" +
				"<button value=\""+MessageTable.Messages[212].getMessage()+"\" action=\"bypass -h admin_stopallbuffs ",
				player.getName(),
				"\" width=60 height=15 back=\"L2UI_ct1.button_df\" fore=\"L2UI_ct1.button_df\">" +
				"</html>"
		);
		
		NpcHtmlMessage ms = new NpcHtmlMessage(1);
		ms.setHtml(html.toString());
		
		activeChar.sendPacket(ms);
		
		GMAudit.auditGMAction(activeChar.getName(), "get_buffs", player.getName(), "");
	}
	
	private void removeBuff(L2PcInstance remover, String playername, int SkillId)
	{
		L2PcInstance player = null;
		try
		{
			player = L2World.getInstance().getPlayer(playername);
		}
		catch (Exception e)
		{
		}
		
		if ((player != null) && (SkillId > 0))
		{
			L2Effect[] effects = player.getAllEffects();
			
			for (L2Effect e : effects)
			{
				if ((e != null) && (e.getSkill().getId() == SkillId))
				{
					e.exit();
					L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[213]);
					cm.addString(e.getSkill().getName());
					cm.addNumber(e.getSkill().getLevel());
					cm.addString(playername);
					cm.sendMessage(remover);
				}
			}
			showBuffs(player, remover);
			GMAudit.auditGMAction(remover.getName(), "stopbuffs", playername, "");
		}
	}
	
	private void removeAllBuffs(L2PcInstance remover, String playername)
	{
		L2PcInstance player = null;
		try
		{
			player = L2World.getInstance().getPlayer(playername);
		}
		catch (Exception e)
		{
		}
		
		if (player != null)
		{
			player.stopAllEffects();
			L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[219]);
			cm.addString(playername);
			cm.sendMessage(remover);
			GMAudit.auditGMAction(remover.getName(), "stopallbuffs", playername, "");
			showBuffs(player, remover);
		}
		else
		{
			L2CoreMessage cm =  new L2CoreMessage (MessageTable.Messages[138]);
			cm.addString(playername);
			cm.sendMessage(remover);
		}
	}
	
}