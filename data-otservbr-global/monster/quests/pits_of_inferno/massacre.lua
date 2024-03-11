local mType = Game.createMonsterType("Massacre")
local monster = {}

monster.description = "Massacre"
monster.experience = 1400000
monster.outfit = {
	lookType = 244,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 320000
monster.maxHealth = 320000
monster.race = "blood"
monster.corpse = 6335
monster.speed = 215
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 40
}

monster.bosstiary = {
	bossRaceId = 305,
	bossRace = RARITY_BANE
}

monster.strategiesTarget = {
	nearest = 50,
	health = 20,
	damage = 15,
	random = 15,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 6,
	summons = {
		{name = "Juggernaut", chance = 100, interval = 20000, count = 6}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "HATE! HATE! KILL! KILL!", yell = true},
	{text = "GRRAAARRRHH!", yell = true},
	{text = "HURRRRWLLL!", yell = true},	
	{text = "GRRRR!", yell = true}
}

monster.loot = {
	{id = 3116, chance = 5880}, -- big bone
	{id = 6499, chance = 100000, maxCount = 5}, -- demonic essence
	{id = 23375, chance = 5880, maxCount = 5}, -- supreme health potion
	{id = 23373, chance = 5880, maxCount = 5}, -- ultimate mana potion
	{id = 23374, chance = 5880, maxCount = 5}, -- ultimate spirit potion
	{id = 3043, chance = 94120, maxCount = 20}, -- crystal coin
	{id = 3422, chance = 5}, -- great shield
	{id = 3577, chance = 88240, maxCount = 9}, -- meat
	{id = 5021, chance = 82350, maxCount = 7}, -- orichalcum pearl
	{id = 3106, chance = 64710}, -- old twig
	{id = 3035, chance = 24820, maxCount = 100}, -- platinum coin
	{id = 6540, chance = 10000}, -- piece of massacre's shell
	{id = 5944, chance = 100000, maxCount = 2}, -- soul orb
	{id = 3340, chance = 1000}, -- heavy mace
	{id = 7403, chance = 900}, -- berserker
	{id = 3360, chance = 7000}, -- golden armor
	{name = "golden legs", chance = 3000},
	{name = "magic plate armor", chance = 2000},
	{id = 6529, chance = 2}, -- pair of soft boots
	{name = "golden boots", chance = 12},
	{name = "crocodile boots", chance = 1},	
	{id = 6104, chance = 1200}, -- jewel case
	{id = 16244, chance = 100}, -- music box
	{id = 31756, chance = 20}, -- regalia of swon
	{id = 31369, chance = 10} -- gryphon mask
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 360, attack = 350},
	{name ="speed", interval = 1000, chance = 25, speedChange = -950, radius = 3, effect = CONST_ME_MAGIC_GREEN, target = true, duration = 16000},	
	{name ="combat", interval = 2000, chance = 45, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -7100, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="condition", type = CONDITION_POISON, interval = 3000, chance = 100, minDamage = -3280, maxDamage = -10400, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 1000, chance = 23, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -4555, length = 7, effect = CONST_ME_ENERGYAREA, target = false}
}

monster.defenses = {
	defense = 265,
	armor = 245,
	{name ="speed", interval = 2000, chance = 8, speedChange = 790, effect = CONST_ME_MAGIC_RED, target = false, duration = 10000},
	{name ="combat", interval = 2000, chance = 35, type = COMBAT_HEALING, minDamage = 600, maxDamage = 7090, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 12},
	{type = COMBAT_ENERGYDAMAGE, percent = -7},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = -3},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
