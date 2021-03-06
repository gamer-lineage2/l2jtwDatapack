# pmq
import sys
from net.sf.l2j.gameserver.model.quest          import State
from net.sf.l2j.gameserver.model.quest          import QuestState
from net.sf.l2j.gameserver.model.quest.jython   import QuestJython as JQuest
from net.sf.l2j.gameserver.model.actor.instance import L2PcInstance

qn = "HB_Deltuva"

DELTUVA = 32313

class Quest (JQuest) :

	def __init__(self,id,name,descr):
		JQuest.__init__(self,id,name,descr)

	def onTalk (self,npc,player):
		st = player.getQuestState(qn)
		if not st: return

		npcId = npc.getNpcId()
		st1 = player.getQuestState("132_MatrasCuriosity")
		htmltext = "<html><body>道爾土巴：<br>看來你們還沒有進去過鋼鐵之城喔。因為太過危險，所以無法讓你們進去。</body></html>"
		if st1 :
			if npcId == DELTUVA and st1.getState() == State.COMPLETED :
				player.teleToLocation(17957, 283361, -9705)
				htmltext = "<html><body>道爾土巴：<br><font color=\"FF0000\">（這是測試傳送尚未實裝！）</font></body></html>"
				st.exitQuest(1)
		st.exitQuest(1)
		return htmltext

QUEST = Quest(-1, qn, "hellbound")

QUEST.addStartNpc(DELTUVA)
QUEST.addTalkId(DELTUVA)