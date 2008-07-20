# Made by mtrix
import sys
from net.sf.l2j.gameserver.model.quest import State
from net.sf.l2j.gameserver.model.quest import QuestState
from net.sf.l2j.gameserver.model.quest.jython import QuestJython as JQuest

qn = "341_HuntingForWildBeasts"

BEAR_SKIN = 4259
ADENA = 57
CHANCE = 400000

class Quest (JQuest) :

 def __init__(self,id,name,descr):
     JQuest.__init__(self,id,name,descr)
     self.questItemIds = [BEAR_SKIN]

 def onEvent (self,event,st) :
     htmltext = event
     if event == "30078-02.htm" :
        st.setState(State.STARTED)
        st.set("cond","1")
        st.playSound("ItemSound.quest_accept")
     return htmltext

 def onTalk (self,npc,player):
     htmltext = "<html><body>沒進行任務或條件不符合。</body></html>"
     st = player.getQuestState(qn)
     if not st : return htmltext

     npcId = npc.getNpcId()
     id = st.getState()
     level = player.getLevel()
     cond = st.getInt("cond")
     if id == State.CREATED :
         if level>=20 :
             htmltext = "30078-01.htm"
         else:
             htmltext = "<html><body>（等級20以上其他角色可以執行這個任務）</body></html>"
             st.exitQuest(1)
     elif cond==1 :
         if st.getQuestItemsCount(BEAR_SKIN)>=20 :
            htmltext = "30078-04.htm"
            st.giveItems(ADENA,3710)
            st.takeItems(BEAR_SKIN,-1)
            st.playSound("ItemSound.quest_finish")
            st.exitQuest(1)
         else :
            htmltext = "30078-03.htm"
     return htmltext

 def onKill(self,npc,player,isPet):
     st = player.getQuestState(qn)
     if not st : return 
     if st.getState() != State.STARTED : return 

     npcId = npc.getNpcId()
     cond = st.getInt("cond")
     if cond==1 :
         st.dropQuestItems(BEAR_SKIN,1,20,CHANCE,1)
     return

QUEST       = Quest(341,qn,"野獸的狩獵")

QUEST.addStartNpc(30078)

QUEST.addTalkId(30078)

QUEST.addKillId(20021)
QUEST.addKillId(20203)
QUEST.addKillId(20310)
QUEST.addKillId(20335)