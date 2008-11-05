# Made by Kerberos
# this script is part of the Official L2J Datapack Project.
# Visit http://forum.l2jdp.com for more details.
import sys
from net.sf.l2j.gameserver.model.quest import State
from net.sf.l2j.gameserver.model.quest import QuestState
from net.sf.l2j.gameserver.model.quest.jython import QuestJython as JQuest
from net.sf.l2j.gameserver.network.serverpackets import NpcSay

qn = "115_TheOtherSideOfTruth"

#NPCs
Misa = 32018
Suspicious = 32019
Rafforty = 32020
Sculpture1 = 32021
Kierre = 32022
Sculpture2 = 32077
Sculpture3 = 32078
Sculpture4 = 32079

#Items
Letter = 8079
Letter2 = 8080
Tablet = 8081
Report = 8082

class Quest (JQuest) : 

 def __init__(self,id,name,descr):
    JQuest.__init__(self,id,name,descr)
    self.questItemIds = [Letter,Letter2,Tablet,Report]

 def onAdvEvent (self,event,npc, player) :
    st = player.getQuestState(qn)
    if not st: return
    htmltext = event
    if event == "32018-04.htm" :
       st.playSound("ItemSound.quest_middle")
       st.set("cond","7")
       st.takeItems(Letter2,1)
    elif event == "32020-02.htm" :
       st.setState(State.STARTED)
       st.playSound("ItemSound.quest_accept")
       st.set("cond","1")
    elif event == "32020-05.htm" :
       st.playSound("ItemSound.quest_middle")
       st.set("cond","3")
       st.takeItems(Letter,1)
    elif event in ["32020-06.htm","32020-08a.htm"] :
       st.exitQuest(1)
       st.playSound("ItemSound.quest_finish")
    elif event in ["32020-08.htm","32020-07a.htm"] :
       st.playSound("ItemSound.quest_middle")
       st.set("cond","4")
    elif event == "32020-12.htm" :
       st.playSound("ItemSound.quest_middle")
       st.set("cond","5")
    elif event == "32020-16.htm" :
       st.playSound("ItemSound.quest_middle")
       st.set("cond","10")
       st.takeItems(Report,1)
    elif event == "32020-18.htm" :
       if st.getQuestItemsCount(Tablet) == 0 :
          st.playSound("ItemSound.quest_middle")
          st.set("cond","11")
          htmltext = "32020-19.htm"
       else:
          st.exitQuest(false)
          st.playSound("ItemSound.quest_finish")
          st.giveItems(57,60044)
    elif event == "32020-19.htm" :
       st.playSound("ItemSound.quest_middle")
       st.set("cond","11")
    elif event == "32022-02.htm" :
       st.playSound("ItemSound.quest_middle")
       st.set("cond","9")
       man = st.addSpawn(Suspicious,104562,-107598,-3688,0,False,4000)
       man.broadcastPacket(NpcSay(man.getObjectId(),0,man.getNpcId(),"竟能與你在這兒再次相逢！"))
       self.startQuestTimer("2",3700,man,player)
       st.giveItems(Report,1)
    elif event == "Sculpture-04.htm" :
       st.set("talk","1")
       htmltext = "Sculpture-05.htm"
       st.set(str(npc.getNpcId()),"1")
    elif event == "Sculpture-04a" :
       st.playSound("ItemSound.quest_middle")
       st.set("cond","8")
       man = st.addSpawn(Suspicious,117890,-126478,-2584,0,False,4000)
       man.broadcastPacket(NpcSay(man.getObjectId(),0,man.getNpcId(),"好像就是這兒..."))
       self.startQuestTimer("1",3700,man,player)
       htmltext = "Sculpture-04.htm"
       if st.getInt(str(Sculpture1)) == 0 and st.getInt(str(Sculpture2)) == 0:
          st.giveItems(Tablet,1)
    elif event == "Sculpture-05.htm" :
       st.set(str(npc.getNpcId()),"1")
    elif event == "1" :
       npc.broadcastPacket(NpcSay(npc.getObjectId(),0,npc.getNpcId(),"有人在此，難道這也是註定的嗎？"))
    elif event == "2" :
       npc.broadcastPacket(NpcSay(npc.getObjectId(),0,npc.getNpcId(),"有關於我的事情你不必知道。你只要順從你的命運就對了。"))
    return htmltext


 def onTalk (self,npc,player):
    htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
    st = player.getQuestState(qn)
    if not st : return htmltext
    state = st.getState()
    npcId = npc.getNpcId()
    cond = st.getInt("cond")
    if state == State.COMPLETED :
       htmltext = "<html><body>這是已經完成的任務。</body></html>"
    if npcId == Rafforty :
       if state == State.CREATED :
          if st.getPlayer().getLevel() >= 53 :
             htmltext = "32020-01.htm"
          else :
             htmltext = "32020-00.htm"
             st.exitQuest(1)
       elif cond == 1:
          htmltext = "32020-03.htm"
       elif cond == 2:
          htmltext = "32020-04.htm"
       elif cond == 3:
          htmltext = "32020-05.htm"
       elif cond == 4:
          htmltext = "32020-11.htm"
       elif cond == 5:
          htmltext = "32020-13.htm"
          st.playSound("ItemSound.quest_middle")
          st.giveItems(Letter2,1)
          st.set("cond","6")
       elif cond == 6:
          htmltext = "32020-14.htm"
       elif cond == 9:
          htmltext = "32020-15.htm"
       elif cond == 10:
          htmltext = "32020-17.htm"
       elif cond == 11:
          htmltext = "32020-20.htm"
       elif cond == 12:
          htmltext = "32020-18.htm"
          st.exitQuest(0)
          st.playSound("ItemSound.quest_finish")
          st.giveItems(57,60044)
    elif npcId == Misa :
       if cond == 1:
          htmltext = "32018-01.htm"
          st.giveItems(Letter,1)
          st.playSound("ItemSound.quest_middle")
          st.set("cond","2")
       elif cond == 2:
          htmltext = "32018-02.htm"
       elif cond == 6:
          htmltext = "32018-03.htm"
       elif cond == 7:
          htmltext = "32018-05.htm"
    elif npcId == Sculpture1 :
       if cond == 7:
          if st.getInt(str(npcId)) == 1:
             htmltext = "Sculpture-02.htm"
          elif st.getInt("talk") == 1:
             htmltext = "Sculpture-06.htm"
          else:
             htmltext = "Sculpture-03.htm"
       elif cond == 8:
          htmltext = "Sculpture-04.htm"
       elif cond == 11:
          st.giveItems(Tablet,1)
          st.playSound("ItemSound.quest_middle")
          st.set("cond","12")
          htmltext = "Sculpture-07.htm"
       elif cond == 12:
          htmltext = "Sculpture-08.htm"
    elif npcId == Sculpture2 :
       if cond == 7:
          if st.getInt(str(npcId)) == 1:
             htmltext = "Sculpture-02.htm"
          elif st.getInt("talk") == 1:
             htmltext = "Sculpture-06.htm"
          else:
             htmltext = "Sculpture-03.htm"
       elif cond == 8:
          htmltext = "Sculpture-04.htm"
       elif cond == 11:
          st.giveItems(Tablet,1)
          st.playSound("ItemSound.quest_middle")
          st.set("cond","12")
          htmltext = "Sculpture-07.htm"
       elif cond == 12:
          htmltext = "Sculpture-08.htm"
    elif npcId == Sculpture3 :
       if cond == 7:
          if st.getInt(str(npcId)) == 1:
             htmltext = "Sculpture-02.htm"
          else:
             htmltext = "Sculpture-01.htm"
             st.set(str(npcId),"1")
       elif cond == 8:
          htmltext = "Sculpture-04.htm"
       elif cond == 11:
          st.giveItems(Tablet,1)
          st.playSound("ItemSound.quest_middle")
          st.set("cond","12")
          htmltext = "Sculpture-07.htm"
       elif cond == 12:
          htmltext = "Sculpture-08.htm"
    elif npcId == Sculpture4 :
       if cond == 7:
          if st.getInt(str(npcId)) == 1:
             htmltext = "Sculpture-02.htm"
          else:
             htmltext = "Sculpture-01.htm"
             st.set(str(npcId),"1")
       elif cond == 8:
          htmltext = "Sculpture-04.htm"
       elif cond == 11:
          st.giveItems(Tablet,1)
          st.playSound("ItemSound.quest_middle")
          st.set("cond","12")
          htmltext = "Sculpture-07.htm"
       elif cond == 12:
          htmltext = "Sculpture-08.htm"
    elif npcId == Kierre :
       if cond == 8:
          htmltext = "32022-01.htm"
       elif cond == 9:
          htmltext = "32022-03.htm"
    return htmltext

QUEST = Quest(115,qn,"真實的另一端")

QUEST.addStartNpc(Rafforty)
QUEST.addTalkId(Rafforty)
QUEST.addTalkId(Misa)
QUEST.addTalkId(Sculpture1)
QUEST.addTalkId(Sculpture2)
QUEST.addTalkId(Sculpture3)
QUEST.addTalkId(Sculpture4)
QUEST.addTalkId(Kierre)
