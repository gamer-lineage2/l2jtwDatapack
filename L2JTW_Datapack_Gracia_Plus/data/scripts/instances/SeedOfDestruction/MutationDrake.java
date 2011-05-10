package instances.SeedOfDestruction;

import java.util.Collection;

import javolution.util.FastList;
import ai.group_template.L2AttackableAIScript;

import com.l2jserver.gameserver.GeoData;
import com.l2jserver.gameserver.model.L2Object;
import com.l2jserver.gameserver.model.actor.L2Character;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.L2Summon;
import com.l2jserver.gameserver.model.actor.instance.L2DecoyInstance;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.QuestTimer;
import com.l2jserver.gameserver.util.Util;
import com.l2jserver.util.Rnd;

/** �����s�~
 * @author L2J Project
 */

public class MutationDrake extends L2AttackableAIScript
{
	private static final int MUTATION_DRAKE = 22552;

	public MutationDrake (int questId, String name, String descr)
	{
		super(questId, name, descr);
		int[] mob = {MUTATION_DRAKE};
		this.registerMobs(mob);
	}

	@Override
	public String onAdvEvent (String event, L2Npc npc, L2PcInstance player)
	{
		return super.onAdvEvent(event, npc, player);
	}

	@Override
	public String onAttack (L2Npc npc, L2PcInstance attacker, int damage, boolean isPet)
	{
		if (npc.getNpcId() == MUTATION_DRAKE)
		{
			if (npc.getCurrentHp() > ((npc.getMaxHp()*3)/4))
			{
				if (Rnd.get(100) < 75)
					getRandomTarget(npc);
			}
			else if (npc.getCurrentHp() > ((npc.getMaxHp()*2)/4))
			{
				if (Rnd.get(100) < 50)
					getRandomTarget(npc);
			}
			else if (npc.getCurrentHp() > ((npc.getMaxHp()*1)/4))
			{
				if (Rnd.get(100) < 25)
					getRandomTarget(npc);
			}
		}
		return super.onAttack(npc, attacker, damage, isPet);
	}

	public L2Character getRandomTarget(L2Npc npc)
	{
		FastList<L2Character> result = new FastList<L2Character>();
		Collection<L2Object> objs = npc.getKnownList().getKnownObjects().values();
		{
			for (L2Object obj : objs)
			{
				if (obj instanceof L2Character)
				{
					if (((L2Character) obj).getZ() < (npc.getZ() - 100) && ((L2Character) obj).getZ() > (npc.getZ() + 100)
							|| !(GeoData.getInstance().canSeeTarget(((L2Character) obj).getX(), ((L2Character) obj).getY(), ((L2Character) obj).getZ(), npc.getX(), npc.getY(), npc.getZ()))||((L2Character) obj).isGM())
						continue;
				}
				if (obj instanceof L2PcInstance || obj instanceof L2Summon || obj instanceof L2DecoyInstance)
				{
					if (Util.checkIfInRange(1000, npc, obj, true) && !((L2Character) obj).isDead())
						result.add((L2Character) obj);
				}
			}
		}
		if (!result.isEmpty() && result.size() != 0)
		{
			Object[] characters = result.toArray();
			QuestTimer timer = getQuestTimer("new_aggro", npc, null);
			if (timer != null)
				timer.cancel();
			startQuestTimer("new_aggro", 10000, npc, null);
			return (L2Character) characters[Rnd.get(characters.length)];
		}
		return null;
	}

	public static void main(String[] args)
	{
		new MutationDrake(-1,"MutationDrake","Instances");
		System.out.println("Instance: Seed of Destruction - Mutation Drake");
	}
}