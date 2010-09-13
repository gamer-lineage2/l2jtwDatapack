# Created by Gigiikun
# Update by pmq

import sys
from com.l2jserver import Config
from com.l2jserver.gameserver.model.quest import State
from com.l2jserver.gameserver.model.quest import QuestState
from com.l2jserver.gameserver.model.quest.jython import QuestJython as JQuest

qn = "643_RiseandFalloftheElrokiTribe"

#Settings: drop chance in %
DROP_CHANCE = 75

BONES_OF_A_PLAINS_DINOSAUR = 8776
PLAIN_DINOSAURS = [22208,22209,22210,22211,22212,22213,22221,22222,22226,22227]
REWARDS = range(8712,8723)

class Quest (JQuest) :

	def __init__(self,id,name,descr):
		JQuest.__init__(self,id,name,descr)
		self.questItemIds = [BONES_OF_A_PLAINS_DINOSAUR]

	def onAdvEvent (self,event,npc,player) :
		htmltext = event
		st = player.getQuestState(qn)
		if not st : return

		count = st.getQuestItemsCount(BONES_OF_A_PLAINS_DINOSAUR)
		if event == "32106-03.htm" :
			st.set("cond","1")
			st.setState(State.STARTED)
			st.playSound("ItemSound.quest_accept")
		elif event == "32106-06.htm" :
			st.takeItems(BONES_OF_A_PLAINS_DINOSAUR,-1)
			st.giveItems(57,count*1374)
		elif event == "32117-03.htm" :
			if count >= 300 :
				st.takeItems(BONES_OF_A_PLAINS_DINOSAUR,300)
				st.rewardItems(REWARDS[st.getRandom(len(REWARDS))],5)
			else :
				htmltext = "32117-04.htm"
		elif event == "32106-07.htm" :
			st.playSound("ItemSound.quest_finish")
			st.exitQuest(1)
		return htmltext

	def onTalk (self,npc,player):
		htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
		st = player.getQuestState(qn)
		if not st: return htmltext

		npcId = npc.getNpcId()
		id = st.getState()
		cond = st.getInt("cond")

		count = st.getQuestItemsCount(BONES_OF_A_PLAINS_DINOSAUR)
		if id == State.CREATED :
			if npcId == 32106 and cond == 0 :
				if player.getLevel() >= 75 :
					htmltext = "32106-01.htm"
				else :
					htmltext = "32106-00.htm"
					st.exitQuest(1)
		elif id == State.STARTED :
			if npcId == 32106 and cond == 1 :
				if count == 0 :
					htmltext = "32106-05.htm"
				else :
					htmltext = "32106-05a.htm"
					st.takeItems(BONES_OF_A_PLAINS_DINOSAUR,-1)
					st.giveItems(57,count*1374)
			elif npcId == 32117 and cond == 1 :
				htmltext = "32117-01.htm"
		return htmltext

	def onKill (self, npc, player,isPet):
		partyMember = self.getRandomPartyMember(player,"1")
		if not partyMember: return
		st = partyMember.getQuestState(qn)
		if st :
			if st.getState() == State.STARTED :
				npcId = npc.getNpcId()
				cond = st.getInt("cond")
				count = st.getQuestItemsCount(BONES_OF_A_PLAINS_DINOSAUR)
				if cond == 1 :
					chance = DROP_CHANCE*Config.RATE_QUEST_DROP
					numItems, chance = divmod(chance,100)
					if st.getRandom(100) < chance : 
						numItems += 1
					if numItems :
						if int(count + numItems)/300 > int(count)/300 :
							st.playSound("ItemSound.quest_middle")
						else :
							st.playSound("ItemSound.quest_itemget")
						st.giveItems(BONES_OF_A_PLAINS_DINOSAUR,int(numItems))
		return

QUEST		= Quest(643,qn,"耶爾可羅一族的興盛衰亡")

QUEST.addStartNpc(32106)

QUEST.addTalkId(32106)
QUEST.addTalkId(32117)

for mob in PLAIN_DINOSAURS :
	QUEST.addKillId(mob)