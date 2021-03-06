# Made by Kerberos
# this script is part of the Official L2J Datapack Project.
# Visit http://forum.l2jdp.com for more details.
import sys
from net.sf.l2j.gameserver.instancemanager import QuestManager
from net.sf.l2j.gameserver.model.quest import State
from net.sf.l2j.gameserver.model.quest import QuestState
from net.sf.l2j.gameserver.model.quest.jython import QuestJython as JQuest

qn = "998_FallenAngelSelect"

NATOOLS = 30894

class Quest (JQuest) :

 def __init__(self,id,name,descr):    JQuest.__init__(self,id,name,descr)

 def onEvent (self,event,st) :
    if event == "dawn" :
       q1 = QuestManager.getInstance().getQuest("142_FallenAngelRequestOfDawn")
       if q1 :
          qs1 = q1.newQuestState(st.getPlayer())
          qs1.setState(State.STARTED)
          q1.notifyEvent("30894-01.htm",None,st.getPlayer())
          st.setState(State.COMPLETED)
       return
    elif event == "dusk" :
       q2 = QuestManager.getInstance().getQuest("143_FallenAngelRequestOfDusk")
       if q2 :
          qs2 = q2.newQuestState(st.getPlayer())
          qs2.setState(State.STARTED)
          q2.notifyEvent("30894-01.htm",None,st.getPlayer())
          st.setState(State.COMPLETED)
       return
    return event

 def onTalk (self,npc,player):
    htmltext = "<html><body>You are either not on a quest that involves this NPC, or you don't meet this NPC's minimum quest requirements.</body></html>"
    st = player.getQuestState(qn)
    if not st : return htmltext
    id = st.getState()
    if id == State.STARTED :
       htmltext = "30894-01.htm"
    return htmltext

QUEST       = Quest(998,qn,"Fallen Angel - Select")

QUEST.addTalkId(NATOOLS)