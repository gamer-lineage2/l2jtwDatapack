# Contributed by t0rm3nt0r (tormentor2000@mail.ru) to the Official L2J Datapack Project
# Visit http://www.l2jdp.com/forum/ for more details.
# Update by pmq 28-07-2010

import sys
from com.l2jserver.gameserver.model.quest import State
from com.l2jserver.gameserver.model.quest import QuestState
from com.l2jserver.gameserver.model.quest.jython import QuestJython as JQuest

#Complete - 100%. 
qn = "173_ToTheIsleOfSouls"

#NPC'S
GALLADUCCI = 30097
GENTLER    = 30094

#ITEM'S
SCROLL_OF_ESCAPE_KAMAEL_VILLAGE = 9716
MARK_OF_TRAVELER                = 7570
GWAINS_DOCUMENT                 = 7563
MAGIC_SWORD_HILT                = 7568

class Quest (JQuest) :

	def __init__(self,id,name,descr):
		JQuest.__init__(self,id,name,descr) 
		self.questItemIds = [GWAINS_DOCUMENT, MAGIC_SWORD_HILT]

	def onAdvEvent (self,event,npc, player) :
		htmltext = event
		st = player.getQuestState(qn)
		if not st : return
		if event == "30097-03.htm" :
			st.set("cond","1")
			st.setState(State.STARTED)
			st.giveItems(GWAINS_DOCUMENT,1)
			st.playSound("ItemSound.quest_accept")
		elif event == "30094-02.htm" :
			st.set("cond","2")
			st.takeItems(GWAINS_DOCUMENT,-1)
			st.giveItems(MAGIC_SWORD_HILT,1)
			st.playSound("ItemSound.quest_middle")
		elif event == "30097-06.htm" :
			st.takeItems(MAGIC_SWORD_HILT,-1)
			st.takeItems(MARK_OF_TRAVELER,-1)
			st.giveItems(SCROLL_OF_ESCAPE_KAMAEL_VILLAGE,1)
			st.playSound("ItemSound.quest_finish")
			st.unset("cond")
			st.exitQuest(False)
		return htmltext

	def onTalk (self,npc,player):
		htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
		st = player.getQuestState(qn)
		if not st : return htmltext

		npcId = npc.getNpcId()
		id = st.getState()
		cond = st.getInt("cond")

		if id == State.COMPLETED :
			htmltext = "<html><body>這是已經完成的任務。</body></html>"
		elif id == State.CREATED :
			if npcId == GALLADUCCI :
				if st.getQuestItemsCount(MARK_OF_TRAVELER) > 0 and player.getRace().ordinal() == 5 :
					htmltext = "30097-02.htm"
				else :
					htmltext = "30097-01.htm"
					st.exitQuest(1)
		elif id == State.STARTED :
			if npcId == GALLADUCCI : 
				if cond == 1 :
					htmltext = "30097-04.htm"
				elif cond == 2 :
					htmltext = "30097-05.htm"
			elif npcId == GENTLER :
				if cond == 1 :
					htmltext = "30094-01.htm"
				elif cond == 2 :
					htmltext = "30094-03.htm"
		return htmltext

QUEST		= Quest(173,qn,"前往英魂之島")

QUEST.addStartNpc(GALLADUCCI)

QUEST.addTalkId(GALLADUCCI)
QUEST.addTalkId(GENTLER)