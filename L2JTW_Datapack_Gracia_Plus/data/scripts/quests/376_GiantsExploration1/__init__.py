# Created by Gnacik
# 2010-02-09 based on official Franz server
import sys
from com.l2jserver.gameserver.model.quest				import State
from com.l2jserver.gameserver.model.quest				import QuestState
from com.l2jserver.gameserver.model.quest.jython	import QuestJython as JQuest

qn = "376_GiantsExploration1"

# NPC
SOBLING	= 31147

# Items
ANCIENT_PARCHMENT = 14841
BOOK1,BOOK2,BOOK3,BOOK4,BOOK5 = [14836,14837,14838,14839,14840]

# Drop Chance
DROP_CHANCE = 20

# Mobs
MOBS = [22670,22671,22672,22673,22674,22675,22676,22677]


class Quest (JQuest) :

	def __init__(self,id,name,descr):
		JQuest.__init__(self,id,name,descr)
		self.questItemIds = [ANCIENT_PARCHMENT]

	def onAdvEvent (self,event,npc,player) :
		htmltext = event
		st = player.getQuestState(qn)
		if not st : return
		if event == "31147-02.htm" :
			st.set("cond","1")
			st.setState(State.STARTED)
			st.playSound("ItemSound.quest_accept")
		return htmltext

	def onTalk (self,npc,player) :
		htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
		st = player.getQuestState(qn)
		if not st : return htmltext

		npcId = npc.getNpcId()
		cond = st.getInt("cond")

		if npcId == SOBLING:
			if st.getState() == State.STARTED :
				if st.getQuestItemsCount(BOOK1) > 0 and st.getQuestItemsCount(BOOK2) > 0 and st.getQuestItemsCount(BOOK3) > 0 and st.getQuestItemsCount(BOOK4) > 0 and st.getQuestItemsCount(BOOK5) > 0 :
					# To do
					htmltext = "31147-03.htm"
				else:
					htmltext = "31147-02a.htm"
			else:
				if player.getLevel() >= 79 :
					htmltext = "31147-01.htm"
				else :
					htmltext = "31147-00.htm"
		return htmltext

	def onKill(self,npc,player,isPet) :
		st = player.getQuestState(qn)
		if not st : return
		if st.getState() != State.STARTED : return

		npcId = npc.getNpcId()
		cond = st.getInt("cond")
		if cond == 1 and npcId in MOBS :
			if st.getRandom(100) < DROP_CHANCE :
				st.giveItems(ANCIENT_PARCHMENT,1)
				st.playSound("ItemSound.quest_itemget")
		return

QUEST		= Quest(376,qn,"巨人洞穴的探險-上篇")

QUEST.addStartNpc(SOBLING)
QUEST.addTalkId(SOBLING)

for i in MOBS :
	QUEST.addKillId(i)