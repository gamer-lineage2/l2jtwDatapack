# Made by Surion 
import sys
from net.sf.l2j.gameserver.instancemanager       import InstanceManager
from net.sf.l2j.gameserver.model.entity          import Instance
from net.sf.l2j.gameserver.model.quest           import State
from net.sf.l2j.gameserver.model.quest           import QuestState
from net.sf.l2j.gameserver.model.quest.jython    import QuestJython as JQuest
from net.sf.l2j.gameserver.network               import SystemMessageId
from net.sf.l2j.gameserver.network.serverpackets import SystemMessage

qn = "Kamaloka_59"

KamalokaLevel = 59
InstanceTemplate = "Kamaloka_59.xml"
KamaLevels       = [59                      ]
KamaPartySize    = [9                       ]
KamaNPC          = [30196,32496             ]
KamaTemplate     = ["Kamaloka_59.xml"       ]
KamaMob          = [22494,22495,22496       ]
KamaMinion       = [29139,29140             ]
KamaBoss         = [29138                   ]
KamaBoss1        = [25619                   ]
KamaPorts        = [[-43457,-174888,-10968] ]
ReturnPort       = [[80985,56373,-1560]     ]
dataIndex = 0

def getKamaIndex(level):
	if level == 59:
		return 0

def isPartySizeOk(player):
	members = player.getParty().getMemberCount()
	if members > KamaPartySize[dataIndex]:
		return False
	return True

def isWithinLevel(player):
	if player.getLevel() > KamaLevels[dataIndex]+5:
		return False
	if player.getLevel() < KamaLevels[dataIndex]-5:
		return False
	return True

def checkPrimaryConditions(player):
	if not player.getParty():
		player.sendPacket(SystemMessage(2101))
		return False
	if not player.getParty().isLeader(player):
		player.sendPacket(SystemMessage(2185))
		return False
	if not isPartySizeOk(player):
		player.sendPacket(SystemMessage(2102))
	if not isWithinLevel(player):
		sm = SystemMessage(SystemMessageId.C1_LEVEL_REQUIREMENT_NOT_SUFFICIENT)
		sm.addCharName(player)
		player.sendPacket(sm)
		return False
	for partyMember in player.getParty().getPartyMembers().toArray():
		if not partyMember.isInsideRadius(player, 500, False, False):
			sm = SystemMessage(SystemMessageId.C1_IS_IN_LOCATION_THAT_CANNOT_BE_ENTERED)
			sm.addCharName(partyMember)
			player.sendPacket(sm)
			return False
	return True

def checkNewInstanceConditions(player):
	#if not player.checkKamaDate():
	#	sm = SystemMessage(SystemMessageId.C1_MAY_NOT_REENTER_YET)
	#	sm.addCharName(player)
	#	player.sendPacket(sm)
	#	return False
	if not player.getParty().isLeader(player):
		player.sendPacket(SystemMessage(2185))
		return False
	party = player.getParty()
	if party == None:
		return True
	for partyMember in party.getPartyMembers().toArray():
		if not isWithinLevel(partyMember):
			sm = SystemMessage(SystemMessageId.C1_LEVEL_REQUIREMENT_NOT_SUFFICIENT)
			sm.addCharName(partyMember)
			player.sendPacket(sm)
			return False
	for partyMember in player.getParty().getPartyMembers().toArray():
		if not partyMember.isInsideRadius(player, 500, False, False):
			sm = SystemMessage(SystemMessageId.C1_IS_IN_LOCATION_THAT_CANNOT_BE_ENTERED)
			sm.addCharName(partyMember)
			player.sendPacket(sm)
			return False
	#	if not partyMember.checkKamaDate():
	#		sm = SystemMessage(SystemMessageId.C1_MAY_NOT_REENTER_YET)
	#		sm.addCharName(player)
	#		player.sendPacket(sm)
	#		return False
	return True

def getExistingInstanceId(player):
	instanceId = 0
	party = player.getParty()
	if party == None:
		return 0
	for partyMember in party.getPartyMembers().toArray():
		if partyMember.getInstanceId()!=0:
			instanceId = partyMember.getInstanceId()
	return instanceId

def teleportPlayer(self,player,teleto):
	player.setInstanceId(teleto.instanceId)
	player.teleToLocation(teleto.x,teleto.y,teleto.z)
	pet = player.getPet()
	if pet != None :
		pet.setInstanceId(teleto.instanceId)
		pet.teleToLocation(teleto.x,teleto.y,teleto.z)
	return

def exitInstance(player,tele):
	tele.x = ReturnPort[dataIndex][0]
	tele.y = ReturnPort[dataIndex][1]
	tele.z = ReturnPort[dataIndex][2]
	player.setInstanceId(0)
	player.teleToLocation(tele.x,tele.y,tele.z)
	pet = player.getPet()
	if pet != None :
		pet.setInstanceId(0)
		pet.teleToLocation(tele.x,tele.y,tele.z)

def checkKillProgress(npc,room):
	cont = True
	if room.npclist.has_key(npc):
		room.npclist[npc] = True
	for npc in room.npclist.keys():
		if room.npclist[npc] == False:
			cont = False
	return cont

def runStartRoom(self, world):
	world.status = 0
	world.startRoom = PyObject()
	world.startRoom.npclist = {}
	newNpc = self.addSpawn(KamaMob[1], -44874,-174956,-10985, 0, False, 0, False, world.instanceId)
	world.startRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[1], -44981,-174884,-10985, 0, False, 0, False, world.instanceId)
	world.startRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[0], -44978,-174762,-10985, 0, False, 0, False, world.instanceId)
	world.startRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[1], -44975,-175009,-10985, 0, False, 0, False, world.instanceId)
	world.startRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[1], -44851,-174886,-10985, 0, False, 0, False, world.instanceId)
	world.startRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[1], -44870,-174816,-10985, 0, False, 0, False, world.instanceId)
	world.startRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[1], -45099,-174888,-10985, 0, False, 0, False, world.instanceId)
	world.startRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[1], -45077,-174956,-10985, 0, False, 0, False, world.instanceId)
	world.startRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[1], -45077,-174817,-10985, 0, False, 0, False, world.instanceId)
	world.startRoom.npclist[newNpc] = False
	print "欲界-深淵迷宮：進入即時地區"

def runFirstRoom(self, world):
	world.status = 1
	world.FirstRoom = PyObject()
	world.FirstRoom.npclist = {}
	newNpc = self.addSpawn(KamaMob[2], -47313,-174886,-10722, 0, False, 0, False, world.instanceId)
	world.FirstRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[2], -47186,-174884,-10722, 0, False, 0, False, world.instanceId)
	world.FirstRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[2], -47308,-174764,-10722, 0, False, 0, False, world.instanceId)
	world.FirstRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[2], -47433,-174886,-10722, 0, False, 0, False, world.instanceId)
	world.FirstRoom.npclist[newNpc] = False
	newNpc = self.addSpawn(KamaMob[2], -47309,-175013,-10722, 0, False, 0, False, world.instanceId)
	world.FirstRoom.npclist[newNpc] = False
	print "欲界-深淵迷宮：第一區域怪物清除"

def runSecondRoom(self, world):
	world.status = 2
	world.SecondRoom = PyObject()
	world.SecondRoom.npclist = {}
	newNpc = self.addSpawn(KamaBoss1[0], -49649,-174887,-10459, 0, False, 0, False, world.instanceId)  # Boss
	world.SecondRoom.npclist[newNpc] = False
	print "欲界-深淵迷宮：第二區域怪物清除"

def runThirdRoom(self, world):
	world.status = 3
	world.ThirdRoom = PyObject()
	world.ThirdRoom.npclist = {}
	newNpc = self.addSpawn(KamaBoss[0], -53418,-174887,-10015, 0, False, 0, False, world.instanceId)  # Boss
	world.ThirdRoom.npclist[newNpc] = False
	print "欲界-深淵迷宮：第三區域怪物清除"

def endInstance(self, world):
	world.status = 4
	world.startRoom = None
	world.FirstRoom = None
	world.SecondRoom = None
	world.ThirdRoom = None
	print "欲界-深淵迷宮：任務完成。（5分鐘後關閉即時地區）"
		
class PyObject:
	pass
	
class Quest (JQuest) :

	def __init__(self,id,name,desc):
		JQuest.__init__(self,id,name,desc)
		self.worlds = {}
		self.world_ids = []
		self.currentWorld = 0

	def onAdvEvent (self,event,npc,player) :
		return str(event)

	def onTalk (self,npc,player):
		if not checkPrimaryConditions(player):
			return
		tele = PyObject()
		dataIndex = getKamaIndex(KamalokaLevel)
		tele.x = KamaPorts[dataIndex][0]
		tele.y = KamaPorts[dataIndex][1]
		tele.z = KamaPorts[dataIndex][2]
		instanceId = getExistingInstanceId(player)
		if instanceId == 0:
			#brand new instance
			if not checkNewInstanceConditions(player):
				return
			instanceId = InstanceManager.getInstance().createDynamicInstance(KamaTemplate[dataIndex])
			if not self.worlds.has_key(instanceId):
				world = PyObject()
				world.rewarded = []
				world.instanceId = instanceId
				self.worlds[instanceId] = world
				self.world_ids.append(instanceId)
				self.currentWorld = instanceId
				instanceObj = InstanceManager.getInstance().getInstance(instanceId)
				instanceObj.setAllowSummon(False)
				instanceObj.setReturnTeleport(ReturnPort[dataIndex][0],ReturnPort[dataIndex][1],ReturnPort[dataIndex][2])
				print "欲界-深淵迷宮：使用 " + InstanceTemplate + " 即時地區：" + str(instanceId) + " 創造玩家：" + str(player.getName()) 
				runStartRoom(self, world)
				tele.instanceId = instanceId
				#player.setKamaDate()
				teleportPlayer(self,player,tele)
				party = player.getParty()
				if party != None:
					for partyMember in party.getPartyMembers().toArray():
						#partyMember.setKamaDate()
						teleportPlayer(self,partyMember,tele)
		else:
			#party already in kamaloka
			foundworld = False
			for worldid in self.world_ids:
				if worldid == instanceId:
					foundworld = True
			if not foundworld:
				player.sendPacket(SystemMessage.sendString("你的隊員已進入其它的即時地區。"))
				return
			tele.instanceId = instanceId
			teleportPlayer(self,player,tele)
		return

	def onAttack(self,npc,player,damage,isPet,skill):
		return
		
	def onKill(self,npc,player,isPet):
		npcId = npc.getNpcId()
		if self.worlds.has_key(npc.getInstanceId()):
			world = self.worlds[npc.getInstanceId()]
			if world.status == 0 :
				if npcId == 22494 :
					runFirstRoom(self, world)
			elif world.status == 1 :
				if checkKillProgress(npc, world.FirstRoom) :
					runSecondRoom(self, world)
			elif world.status == 2 :
				if checkKillProgress(npc, world.SecondRoom) :
					runThirdRoom(self, world)
			elif world.status == 3 :
				if npcId == 29138 :
					instanceObj = InstanceManager.getInstance().getInstance(self.currentWorld)
					instanceObj.setDuration(5)
					instanceObj.removeNpcs()
					endInstance(self, world)
		return

QUEST = Quest(-1, qn, "Kamaloka")

QUEST.addStartNpc(30196)

QUEST.addTalkId(32496)
QUEST.addTalkId(30196)

for mob in [22494,22495,22496,25619,29138,29139,29140]:
	QUEST.addKillId(mob)