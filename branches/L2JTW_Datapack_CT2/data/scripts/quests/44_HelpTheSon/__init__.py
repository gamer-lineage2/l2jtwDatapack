#quest by zerghase
import sys
from net.sf.l2j import Config 
from net.sf.l2j.gameserver.model.quest import State
from net.sf.l2j.gameserver.model.quest import QuestState
from net.sf.l2j.gameserver.model.quest.jython import QuestJython as JQuest

qn = "44_HelpTheSon"

LUNDY=30827
DRIKUS=30505

WORK_HAMMER=168
GEMSTONE_FRAGMENT=7552
GEMSTONE=7553
PET_TICKET=7585

MAILLE_GUARD=20921
MAILLE_SCOUT=20920
MAILLE_LIZARDMAN=20919

MAX_COUNT=30
MIN_LEVEL=24

class Quest (JQuest) :
  def onEvent(self, event, st):
    htmltext=event
    if event=="1":
      htmltext="30827-01.htm"
      st.set("cond","1")
      st.setState(State.STARTED)
      st.playSound("ItemSound.quest_accept")
    if event=="3" and st.getQuestItemsCount(WORK_HAMMER):
      htmltext="30827-03.htm"
      st.takeItems(WORK_HAMMER,1)
      st.set("cond","2")
    if event=="4" and st.getQuestItemsCount(GEMSTONE_FRAGMENT)>=MAX_COUNT:
      htmltext="30827-05.htm"
      st.takeItems(GEMSTONE_FRAGMENT,MAX_COUNT)
      st.giveItems(GEMSTONE,1)
      st.set("cond", "4")
    if event=="5" and st.getQuestItemsCount(GEMSTONE):
      htmltext="30505-06.htm"
      st.takeItems(GEMSTONE,1)
      st.set("cond","5")
    if event=="7":
      htmltext="30827-07.htm"
      st.giveItems(PET_TICKET,1)
      st.unset("cond")
      st.exitQuest(False)
    return htmltext

  def onTalk(self, npc, player):
    htmltext="<html><body>目前沒有執行任務，或條件不符。</body></html>"
    st = player.getQuestState(qn)
    if not st : return htmltext
    npcId=npc.getNpcId()
    id=st.getState()
    if id==State.CREATED:
      if player.getLevel()>=MIN_LEVEL:
        htmltext="30827-00.htm"
      else:
        st.exitQuest(1)
        htmltext="<html><body>（等級24以上的角色才可以執行的任務。）</body></html>"
    elif id==State.STARTED:
      cond=st.getInt("cond")
      if npcId==LUNDY:
        if cond==1:
          if not st.getQuestItemsCount(WORK_HAMMER):
            htmltext="30827-01a.htm"
          else:
            htmltext="30827-02.htm"
        elif cond==2:
          htmltext="30827-03a.htm"
        elif cond==3:
            htmltext="30827-04.htm"
        elif cond==4:
          htmltext="30827-05a.htm"
        elif cond==5:
          htmltext="30827-06.htm"
      elif npcId==DRIKUS:
        if cond==4 and st.getQuestItemsCount(GEMSTONE):
          htmltext="30505-05.htm"
        elif cond==5:
          htmltext="30505-06a.htm"
    elif id==State.COMPLETED:
      htmltext="<html><body>這是已經完成的任務。</body></html>"
    return htmltext

  def onKill(self,npc,player,isPet):
    st = player.getQuestState(qn)
    if not st : return 
    if st.getState() != State.STARTED : return 
    npcId = npc.getNpcId()
    cond=st.getInt("cond")
    if cond==2:
      numItems,chance = divmod(100*Config.RATE_QUESTS_REWARD,100)
      if st.getRandom(100) < chance :
        numItems = numItems +1  
      pieces=st.getQuestItemsCount(GEMSTONE_FRAGMENT)
      if pieces + numItems >= MAX_COUNT :
        numItems = MAX_COUNT - pieces
        if numItems != 0 :
          st.playSound("ItemSound.quest_middle")
          st.set("cond", "3")
      else :  
        st.playSound("ItemSound.quest_itemget")
      st.giveItems(GEMSTONE_FRAGMENT,int(numItems))
    return     

QUEST=Quest(44,qn,"幫幫兒子吧!")


QUEST.addStartNpc(LUNDY)

QUEST.addTalkId(LUNDY)

QUEST.addTalkId(DRIKUS)

QUEST.addKillId(MAILLE_GUARD)
QUEST.addKillId(MAILLE_SCOUT)
QUEST.addKillId(MAILLE_LIZARDMAN)