# Made by Mr. - Version 0.3 by DrLecter
import sys
from net.sf.l2j import Config 
from net.sf.l2j.gameserver.model.quest import State
from net.sf.l2j.gameserver.model.quest import QuestState
from net.sf.l2j.gameserver.model.quest.jython import QuestJython as JQuest

qn = "155_FindSirWindawood"

OFFICIAL_LETTER_ID = 1019
HASTE_POTION_ID = 734

class Quest (JQuest) :

 def __init__(self,id,name,descr):
     JQuest.__init__(self,id,name,descr)
     self.questItemIds = [OFFICIAL_LETTER_ID]

 def onAdvEvent (self,event,npc, player) :
    htmltext = event
    st = player.getQuestState(qn)
    if not st : return
    if event == "1" :
      st.giveItems(OFFICIAL_LETTER_ID,1)
      htmltext = "30042-04.htm"
      st.set("cond","1")
      st.setState(State.STARTED)
      st.playSound("ItemSound.quest_accept")
    return htmltext

 def onTalk (self,npc,player):
   htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
   st = player.getQuestState(qn)
   if not st : return htmltext

   npcId = npc.getNpcId()
   id = st.getState()
   if id == State.COMPLETED:
      htmltext = "<html><body>這是已經完成的任務。</body></html>"
 
   elif npcId == 30042 :
      if not st.getInt("cond") :
         if player.getLevel() >= 3 :
            htmltext = "30042-03.htm"
         else:
            htmltext = "30042-02.htm"
            st.exitQuest(1)
      elif st.getInt("cond") and st.getQuestItemsCount(OFFICIAL_LETTER_ID) :
         htmltext = "30042-05.htm"
   elif npcId == 30311 and st.getInt("cond") and st.getQuestItemsCount(OFFICIAL_LETTER_ID) and id == State.STARTED:
      st.takeItems(OFFICIAL_LETTER_ID,-1)
      st.giveItems(HASTE_POTION_ID,int(Config.RATE_QUESTS_REWARD))
      st.unset("cond")
      st.exitQuest(False)
      st.playSound("ItemSound.quest_finish")
      htmltext = "30311-01.htm"
   return htmltext

QUEST       = Quest(155,qn,"尋找溫達伍德閣下")

QUEST.addStartNpc(30042)

QUEST.addTalkId(30042)

QUEST.addTalkId(30311)