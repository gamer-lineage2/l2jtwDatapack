# Created by Eyerobot, edited by Emperorc
import sys
from net.sf.l2j.gameserver.model.quest import State
from net.sf.l2j.gameserver.model.quest import QuestState
from net.sf.l2j.gameserver.model.quest.jython import QuestJython as JQuest

qn = "112_WalkOfFate"

# ~~~~~ npcId list: ~~~~~
Livina            = 30572
Karuda            = 32017
# ~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~ itemId list: ~~~~~~
EnchantD            = 956
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

class Quest (JQuest) : 

 def __init__(self,id,name,descr): JQuest.__init__(self,id,name,descr) 

 def onAdvEvent (self,event,npc,player) :        
    st = player.getQuestState(qn)
    if not st: return
    htmltext = event
    cond = st.getInt("cond")
    if event == "32017-02.htm" and cond == 1 :
        st.giveItems(57,4665)
        st.giveItems(EnchantD,1)
        st.exitQuest(False)
        st.playSound("ItemSound.quest_finish")
    elif event == "30572-02.htm" :
        st.playSound("ItemSound.quest_accept")
        st.setState(State.STARTED)
        st.set("cond","1")
    return htmltext

 def onTalk (self,npc,player):        
    htmltext = "<html><head><body>沒進行任務或條件不符合。</body></html>"
    st = player.getQuestState(qn)
    if not st : return htmltext
    state = st.getState()
    npcId = npc.getNpcId()
    cond = st.getInt("cond")
    if state == State.COMPLETED :
        htmltext = "<html><body>這任務你已完成。</body></html>"
    elif state == State.CREATED :
        if npcId == Livina :
            if player.getLevel() >= 20 :
               htmltext = "30572-01.htm"
            else:
               htmltext = "30572-00.htm"
               st.exitQuest(1)
    elif state == State.STARTED :
        if npcId == Livina :
            htmltext = "30572-03.htm"
        elif npcId == Karuda :
            htmltext = "32017-01.htm"
    return htmltext

QUEST = Quest(112,qn,"命運的一步")

QUEST.addStartNpc(Livina)

QUEST.addTalkId(Livina)
QUEST.addTalkId(Karuda)