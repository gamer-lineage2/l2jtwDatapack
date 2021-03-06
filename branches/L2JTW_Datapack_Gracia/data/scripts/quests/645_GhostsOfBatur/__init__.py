#Made by Kerb
import sys

from com.l2jserver import Config
from com.l2jserver.gameserver.model.quest import State
from com.l2jserver.gameserver.model.quest import QuestState
from com.l2jserver.gameserver.model.quest.jython import QuestJython as JQuest 

qn = "645_GhostsOfBatur" 

#Drop rate
DROP_CHANCE = 75
#Npc
KARUDA = 32017
#Items
GRAVE_GOODS = 8089
#Rewards
REWARDS={
    "BDH":[1878,18],
    "CKS":[1879, 7],
    "STL":[1880, 4],
    "CBP":[1881, 6],
    "LTR":[1882,10],
    "STM":[1883, 2]
    }
#Mobs
MOBS = [ 22007,22009,22010,22011,22012,22013,22014,22015,22016 ]

class Quest (JQuest) :
 def __init__(self,id,name,descr):
    JQuest.__init__(self,id,name,descr)
    self.questItemIds = [GRAVE_GOODS]

 def onAdvEvent (self,event,npc, player) :
   htmltext = event
   st = player.getQuestState(qn)
   if not st : return
   if event == "32017-03.htm" :
      if st.getPlayer().getLevel() < 23 : 
         htmltext = "32017-02.htm"
         st.exitQuest(1)
      else :
         st.set("cond","1")
         st.setState(State.STARTED)
         st.playSound("ItemSound.quest_accept")
   elif event in REWARDS.keys() :
      if st.getQuestItemsCount(GRAVE_GOODS) == 180 :
         item,qty = REWARDS[event]
         st.takeItems(GRAVE_GOODS,-1)
         st.rewardItems(item,qty)
         st.playSound("ItemSound.quest_finish")
         st.exitQuest(1)
         htmltext = "32017-07.htm"
      else :
         htmltext = "32017-04.htm"
   return htmltext

 def onTalk (self,npc,player):
   htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
   st = player.getQuestState(qn)
   if not st : return htmltext
   npcId = npc.getNpcId()
   id = st.getState()
   cond = st.getInt("cond")
   if cond == 0 :
      htmltext = "32017-01.htm"
   elif cond == 1 :
      htmltext = "32017-04.htm"
   elif cond == 2 :
      if st.getQuestItemsCount(GRAVE_GOODS) == 180 : 
         htmltext = "32017-05.htm"
      else :
         htmltext = "32017-01.htm"
   return htmltext

 def onKill(self,npc,player,isPet):
  partyMember = self.getRandomPartyMember(player,"1")
  if not partyMember: return
  st = partyMember.getQuestState(qn)
  if st :
    count = st.getQuestItemsCount(GRAVE_GOODS)
    if st.getInt("cond") == 1 and count < 180 :
      chance = DROP_CHANCE * Config.RATE_QUEST_DROP
      numItems, chance = divmod(chance,100)
      if st.getRandom(100) < chance : 
         numItems += 1
      if numItems :
         if count + numItems >= 180 :
            numItems = 180 - count
            st.playSound("ItemSound.quest_middle")
            st.set("cond","2")
         else:
            st.playSound("ItemSound.quest_itemget")   
         st.giveItems(GRAVE_GOODS,int(numItems))       
  return

QUEST       = Quest(645, qn, "巴吐的亡靈")

QUEST.addStartNpc(KARUDA)
QUEST.addTalkId(KARUDA) 

for i in MOBS :
  QUEST.addKillId(i)