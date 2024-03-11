local internalNpcName = "Flickering Soul"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1219,
	lookHead = 3,
	lookBody = 9,
	lookLegs = 62,
	lookFeet = 38,
	lookAddons = 0
}

npcConfig.flags = {
	floorchange = false
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end
	
	if npcHandler:getTopic(playerId) == 0 then
		if MsgContains(message, "task") then
			if player:getStorageValue(Storage.Quest.U12_40.SoulWar.QuestReward) == 1 then
				player:addOutfit(1322)
				player:addOutfit(1323)
				player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
				player:setStorageValue(Storage.Quest.U12_40.SoulWar.QuestReward, 2)
				npcHandler:say('You did it! For the first time I can feel free from the pull of my past. Now I am free at last...', npc, creature)
				npcHandler:say('I might stay a while and teach other souls about the inner peace, but will eventually pass on. Thank you so much, my hero. My eternal gratitude and blessings will be with you!', npc, creature)
				npcHandler:setTopic(playerId, 0)
			end	
			if player:getStorageValue(Storage.Quest.U12_40.SoulWar.QuestReward) == 2 then
				npcHandler:say('I have no new tasks, but will always be thankfull! Thank you so much, my hero. My eternal gratitude and blessings will be with you!', npc, creature)
				npcHandler:setTopic(playerId, 0)
			end
			if player:getStorageValue(Storage.Quest.U12_40.SoulWar.QuestReward) == 0 then
				npcHandler:say('Please, if you have finished your task, remember to retrieve the reward from the chest.', npc, creature)
				npcHandler:setTopic(playerId, 0)
			end
		end
	end
end

npcHandler:setMessage(MESSAGE_GREET, "Be greeted, living soul!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Farewell, it has been a while since I roamed the world of the living in a mortal shell. ")
npcHandler:setMessage(MESSAGE_WALKAWAY, "I recognized the extent of my folly and failure. I decided not to return to the world of the living.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)