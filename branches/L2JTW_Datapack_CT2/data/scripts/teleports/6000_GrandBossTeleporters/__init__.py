#Made by Emperorc
import sys
from net.sf.l2j.gameserver.datatables import DoorTable
from net.sf.l2j.gameserver.model.quest import State
from net.sf.l2j.gameserver.model.quest import QuestState
from net.sf.l2j.gameserver.model.quest.jython import QuestJython as JQuest
from net.sf.l2j.gameserver.datatables import SpawnTable
from net.sf.l2j.util import Rnd
from net.sf.l2j.gameserver.instancemanager import QuestManager
from net.sf.l2j.gameserver.instancemanager import GrandBossManager

qn = "6000_GrandBossTeleporters"

NPCs = [
    13001, #Heart of Warding : Teleport into Lair of Antharas
    31859, #Teleportation Cubic : Teleport out of Lair of Antharas
    31384, #Gatekeeper of Fire Dragon : Opening some doors
    31385, #Heart of Volcano : Teleport into Lair of Valakas
    31540, #Watcher of Valakas Klein : Teleport into Hall of Flames
    31686, #Gatekeeper of Fire Dragon : Opens doors to Heart of Volcano
    31687, #Gatekeeper of Fire Dragon : Opens doors to Heart of Volcano
    31759, #Teleportation Cubic : Teleport out of Lair of Valakas
    ]

class Quest (JQuest) :

 def __init__(self,id,name,descr):
     self.antharasAI = QuestManager.getInstance().getQuest("antharas")
     self.valakasAI = QuestManager.getInstance().getQuest("valakas")
     self.count = 0
     self.count2 = 0
     JQuest.__init__(self,id,name,descr)

 def onAdvEvent (self,event,npc,player):
    st = player.getQuestState(qn)
    if not st: 
       st = self.newQuestState(player)
    if event == "31540":
       if st.getQuestItemsCount(7267) > 0 :
          st.takeItems(7267,1)
          player.teleToLocation(183813,-115157,-3303)
          st.set("allowEnter","1")
          return
       else :
          htmltext = "31540-06.htm"
    return htmltext

 def onTalk (self,npc,player):
    npcId = npc.getNpcId()
    htmltext = ""
    if npcId == 13001 : #heart of warding
        htmltext = "13001-01.htm"
        if self.antharasAI :
            status = GrandBossManager.getInstance().getBossStatus(29019)
            if status == 0 or status == 1 : #If entrance to see Antharas is unlocked (he is Dormant or Waiting)
                st = player.getQuestState(qn)
                if st.getQuestItemsCount(3865) > 0 :
                    st.takeItems(3865,1)
                    zone = GrandBossManager.getInstance().getZone(181323,114850,-7618) #Update by rocknow
                    if zone : 
                       zone.allowPlayerEntry(player,30)
                    x = 174170 + Rnd.get(260)      #Update by rocknow
                    y = 113983 + Rnd.get(1500)     #Update by rocknow
                    player.teleToLocation(x,y,-7709)
                    if status == 0 :
                        self.antharasAI.startQuestTimer("waiting",0, npc, None)        #Update by rocknow
                        #Delete by rocknow
                        #Delete by rocknow
                    return
                else :
                    htmltext = "13001-03.htm"
            elif status == 2 :
                htmltext = "13001-02.htm"
    elif npcId == 31859 : #antharas teleport cube
        x = 79800 + Rnd.get(600)
        y = 151200 + Rnd.get(1100)
        player.teleToLocation(x,y,-3534)
        return
    elif npcId == 31385 : #heart of volcano
        htmltext = "31385-01.htm"
        if self.valakasAI :
            status = GrandBossManager.getInstance().getBossStatus(29028)
            if status == 0 or status == 1 : #If entrance to see Valakas is unlocked (he is Dormant or Waiting)
                st = player.getQuestState(qn)
                if self.count >= 200 :
                   htmltext = "31385-03.htm"
                elif st.getInt("allowEnter") == 1:
                   st.unset("allowEnter")
                   zone = GrandBossManager.getInstance().getZone(212852,-114842,-1632)
                   if zone :
                      zone.allowPlayerEntry(player,30)
                   x = 204328 + Rnd.get(600)
                   y = -111874 + Rnd.get(600)
                   player.teleToLocation(x,y,70)
                   self.count = self.count+1
                   if status == 0 :
                      self.valakasAI.startQuestTimer("1001",0, npc, None) #Update by rocknow
                      #Delete by rocknow
                      #Delete by rocknow
                   return
                elif st.getQuestItemsCount(7267) > 0 : #Update by rocknow-Start
                   st.takeItems(7267,1)
                   zone = GrandBossManager.getInstance().getZone(212852,-114842,-1632)
                   if zone :
                      zone.allowPlayerEntry(player,30)
                   x = 204328 + Rnd.get(600)
                   y = -111874 + Rnd.get(600)
                   player.teleToLocation(x,y,70)
                   self.count = self.count+1
                   if status == 0 :
                      self.valakasAI.startQuestTimer("1001",0, npc, None)
                   return                              #Update by rocknow-End
                else: #player cheated, wasn't ported via npc Klein
                  htmltext = "31385-04.htm"   
            elif status == 2 :
                htmltext = "31385-02.htm"
            else :
                htmltext = "31385-01.htm"
        else :
            htmltext = "31385-01.htm"
    elif npcId == 31384 : #Gatekeeper of Fire Dragon
        DoorTable.getInstance().getDoor(24210004).openMe()
        return
    elif npcId == 31686 : #Gatekeeper of Fire Dragon
        DoorTable.getInstance().getDoor(24210006).openMe()
        return
    elif npcId == 31687 : #Gatekeeper of Fire Dragon
        DoorTable.getInstance().getDoor(24210005).openMe()
        return
    elif npcId == 31540 : #Watcher of Valakas Klein
        st = player.getQuestState(qn)
        if self.count < 50 :
           htmltext = "31540-01.htm"
        elif self.count < 100 :
           htmltext = "31540-02.htm"
        elif self.count < 150 :
           htmltext = "31540-03.htm"
        elif self.count < 200 :
           htmltext = "31540-04.htm"
        else:
           htmltext = "31540-05.htm"
    elif npcId == 31759 : #valakas teleport cube
        x = 150037 + Rnd.get(500)
        y = -57720 + Rnd.get(500)
        player.teleToLocation(x,y,-2976)
        return
    return htmltext

QUEST       = Quest(-1, qn, "Teleports")

for npcid in NPCs :
    QUEST.addStartNpc(npcid)
    QUEST.addTalkId(npcid)