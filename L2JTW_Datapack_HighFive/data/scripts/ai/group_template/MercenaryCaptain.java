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
package ai.group_template;

import java.util.Calendar;
import java.util.List;

import javolution.util.FastList;

import com.l2jserver.Config;
import com.l2jserver.gameserver.ThreadPoolManager;
import com.l2jserver.gameserver.instancemanager.TownManager;
import com.l2jserver.gameserver.model.actor.L2Character;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.Quest;
import com.l2jserver.gameserver.model.zone.type.L2TownZone;
import com.l2jserver.gameserver.network.clientpackets.Say2;
import com.l2jserver.gameserver.network.serverpackets.NpcSay;
import com.l2jserver.util.Rnd;

/**
 * 傭兵隊長
 * @author mrTJO
 * Mercenary Broadcast in the city a random message every hour
 * at hh:55 (Real time) * 
 */

public class MercenaryCaptain extends Quest
{
	private static final int CAPTAIN_GLUDIO     = 36481;  // Gludio
	private static final int CAPTAIN_DION       = 36482;  // Dion
	private static final int CAPTAIN_GIRAN      = 36483;  // Giran
	private static final int CAPTAIN_OREN       = 36484;  // Oren
	private static final int CAPTAIN_ADEN       = 36485;  // Aden
	private static final int CAPTAIN_INNADRIL   = 36486;  // Innadril
	private static final int CAPTAIN_GODDARD    = 36487;  // Goddard
	private static final int CAPTAIN_RUNE       = 36488;  // Rune
	private static final int CAPTAIN_SCHUTTGART = 36489;  // Schuttgart

	List<L2Npc> _npcs = new FastList<L2Npc>();

	private static final String[] dlog =
	{
		"想要戰鬥嗎？會感到害怕？！再怎麼躲也無處可逃了。若想要對戰，我們傭兵隊將會親自出馬來拔刀相助！",
		"勇氣！魄力！血氣！要在領地戰實現戰鬥夢想的傭兵們啊，來到我的跟前！財富和名譽正等著你們呢！"
	};

	public MercenaryCaptain(int questId, String name, String descr)
	{
		super(questId, name, descr);

		// Register Events
		addEventId(CAPTAIN_GLUDIO, Quest.QuestEventType.ON_SPAWN);
		addEventId(CAPTAIN_DION, Quest.QuestEventType.ON_SPAWN);
		addEventId(CAPTAIN_GIRAN, Quest.QuestEventType.ON_SPAWN);
		addEventId(CAPTAIN_OREN, Quest.QuestEventType.ON_SPAWN);
		addEventId(CAPTAIN_ADEN, Quest.QuestEventType.ON_SPAWN);
		addEventId(CAPTAIN_INNADRIL, Quest.QuestEventType.ON_SPAWN);
		addEventId(CAPTAIN_GODDARD, Quest.QuestEventType.ON_SPAWN);
		addEventId(CAPTAIN_RUNE, Quest.QuestEventType.ON_SPAWN);
		addEventId(CAPTAIN_SCHUTTGART, Quest.QuestEventType.ON_SPAWN);

		// Schedule Broadcast for Shout
		scheduleBroadcast();
	}

	@Override
	public String onSpawn(L2Npc npc)
	{
		if (!_npcs.contains(npc))
			_npcs.add(npc);

		return super.onSpawn(npc);
	}

	private void scheduleBroadcast()
	{
		Calendar cal = Calendar.getInstance();
		int tfhTime = cal.get(Calendar.HOUR_OF_DAY);
		long currTime = tfhTime * 3600000 + cal.get(Calendar.MINUTE) * 60000 + cal.get(Calendar.SECOND) * 1000 + cal.get(Calendar.MILLISECOND);
		long nextTime = 0;
		if ((tfhTime + 1) > 24)
			nextTime = 6900000;
		else if (cal.get(Calendar.MINUTE) < 55)
			nextTime = tfhTime * 3600000 + 3300000;
		else
			nextTime = (tfhTime + 1) * 3600000 + 3300000;
		long initial = nextTime - currTime;
		ThreadPoolManager.getInstance().scheduleGeneralAtFixedRate(new BroadcastToZone(), initial, 3600000L);
	}

	class BroadcastToZone implements Runnable
	{
		@Override
		public void run()
		{
			for (L2Npc npc : _npcs)
			{
				if (npc != null)
				{
					if (Config.DEBUG)
						_log.info("Broadcasting Mercenary Captain Message to Zone");
					int dg = Rnd.get(0, 1);
					NpcSay ns = new NpcSay(npc.getObjectId(), Say2.SHOUT, npc.getNpcId(), dlog[dg]);
					L2TownZone town = TownManager.getTown(npc.getX(), npc.getY(), npc.getZ());
					{
						if (town.getCharactersInside() != null && !town.getCharactersInside().isEmpty())
						{
							for (L2Character obj : town.getCharactersInside().values())
							{
								if (obj == null)
									continue;
								if (obj instanceof L2PcInstance)
									obj.sendPacket(ns);
							}
						}
					}
				}
			}
		}
	}

	public static void main(String[] args)
	{
		new MercenaryCaptain(-1,"MercenaryCaptain","ai");
	}

}