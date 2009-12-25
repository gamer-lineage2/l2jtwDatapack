import sys
from com.l2jserver.gameserver.model.quest import State
from com.l2jserver.gameserver.model.quest import QuestState
from com.l2jserver.gameserver.model.quest.jython import QuestJython as JQuest

qn = "179_IntoTheLargeCavern"

#NPC'S
KEKROPUS = 32138

class Quest (JQuest) :

 def __init__(self,id,name,descr):
     JQuest.__init__(self,id,name,descr)
 
 def onEvent (self,event,st) :
     htmltext = event
     player = st.getPlayer()
     if event == "32138-03.htm" :
       st.set("cond","1")
       st.setState(State.STARTED)
       st.playSound("ItemSound.quest_accept")
       st.exitQuest(1)
     return htmltext


 def onTalk (self,npc,player):
     npcId = npc.getNpcId()
     htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
     st = player.getQuestState(qn)
     if not st : return htmltext
     id = st.getState()
     cond = st.getInt("cond")
     if id == State.COMPLETED :
       htmltext = "<html><body>這是已經完成的任務。</body></html>"
     elif id == State.CREATED and npcId == KEKROPUS :
       if player.getRace().ordinal() != 5 :
         return "32138-00.htm"
       if st.getPlayer().getLevel() >= 17:
         htmltext = "32138-01.htm"
         st.exitQuest(1)
       else :
         htmltext = "32138-02.htm"
         st.exitQuest(1)
     return htmltext

QUEST       = Quest(179,qn,"進入大空洞")

QUEST.addStartNpc(32138)

QUEST.addTalkId(32138)
