# Created by CubicVirtuoso
# Any problems feel free to drop by #l2j-datapack on irc.freenode.net
import sys
from net.sf.l2j.gameserver.model.quest import State
from net.sf.l2j.gameserver.model.quest import QuestState
from net.sf.l2j.gameserver.model.quest.jython import QuestJython as JQuest

qn = "9_IntoTheCityOfHumans"

#NPCs 
PETUKAI = 30583 
TANAPI  = 30571 
TAMIL   = 30576 

#REWARDS 
ADENA = 57 
SCROLL_OF_ESCAPE_GIRAN = 7559 
MARK_OF_TRAVELER = 7570 
 
class Quest (JQuest) :

 def __init__(self,id,name,descr): JQuest.__init__(self,id,name,descr) 

 def onEvent (self,event,st) : 
   htmltext = event 
   if event == "30583-03.htm" : 
     st.set("cond","1") 
     st.set("id","1") 
     st.setState(State.STARTED) 
     st.playSound("ItemSound.quest_accept") 
   elif event == "30571-02.htm" : 
     st.set("cond","2") 
     st.set("id","2") 
     st.playSound("ItemSound.quest_middle") 
   elif event == "30576-02.htm" :
     st.giveItems(MARK_OF_TRAVELER, 1)
     st.giveItems(SCROLL_OF_ESCAPE_GIRAN,1) 
     st.set("cond","0") 
     st.exitQuest(False) 
     st.playSound("ItemSound.quest_finish") 
   return htmltext 

 def onTalk (self,npc,player): 
   htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
   st = player.getQuestState(qn)
   if not st : return htmltext
   npcId = npc.getNpcId() 
   cond  = st.getInt("cond") 
   id    = st.getState() 

   if id == State.CREATED : 
     st.set("cond","0") 
     if player.getRace().ordinal() == 3 : 
       if player.getLevel() >= 3 : 
         htmltext = "30583-02.htm" 
       else: 
         htmltext = "<html><body>（等級3以上的角色才可以執行的任務。）</body></html>"
         st.exitQuest(1) 
     else : 
       htmltext = "30583-01.htm" 
       st.exitQuest(1) 
   elif npc == PETUKAI and id == State.COMPLETED : 
     htmltext = "<html><body>抱歉！旅行者，我無法再給你奇岩城鎮回歸卷軸了。</body></html>"
   elif npc == PETUKAI and cond == 1 : 
     htmltext = "30583-04.htm"
   if id == State.STARTED :  
       if npcId == TANAPI and cond : 
         htmltext = "30571-01.htm" 
       elif npcId == TAMIL and cond == 2 : 
         htmltext = "30576-01.htm" 
   return htmltext 

QUEST     = Quest(9,qn,"往人類的都市")
 

QUEST.addStartNpc(PETUKAI) 

QUEST.addTalkId(PETUKAI) 

QUEST.addTalkId(TANAPI) 
QUEST.addTalkId(TAMIL) 
