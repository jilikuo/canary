local mType = Game.createMonsterType("Monstor")
local monster = {}

monster.description = "Monstor"
monster.experience = 1057500
monster.outfit = {
	lookType = 244,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 269060
monster.maxHealth = 269060
monster.race = "blood"
monster.corpse = 6335
monster.speed = 175
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.bosstiary = {
	bossRaceId = 568,
	bossRace = RARITY_BANE
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	maxSummons = 3,
	summons = {
		{name = "Acid Blob", chance = 40, interval = 4000, count = 3}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "NO ARMY ME STOPPING! GRARR!", yell = false},
	{text = "ME DESTROY CITY! GROAR!", yell = false},
	{text = "WHARR! MUST ... KIDNAP WOMEN!", yell = false}
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
	{id = 5944, chance = 100000, maxCount = 2}, -- soul orb
	{id = 3340, chance = 1000}, -- heavy mace
	{id = 7403, chance = 900}, -- berserker
	{id = 3360, chance = 7000}, -- golden armor
	{name = "golden legs", chance = 3000},
	{name = "magic plate armor", chance = 2000},
	{id = 6529, chance = 2}, -- pair of soft boots
	{name = "golden boots", chance = 10},
	{name = "crocodile boots", chance = 1},
	{id = 9381, chance = 10}, -- helmet of ultimate terror
	{id = 9386, chance = 10}, -- farmer's avenger
	{id = 9380, chance = 10}, -- shield of care
	{id = 9396, chance = 10} -- incredible mumpiz slayer
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, minDamage = 0, maxDamage = -3467},
	{name ="speed", interval = 1000, chance = 15, speedChange = -1050, radius = 9, effect = CONST_ME_POISONAREA, target = true, duration = 6000},
	{name ="combat", interval = 3000, chance = 90, type = COMBAT_LIFEDRAIN, minDamage = -66, maxDamage = -3305, length = 6, spread = 3, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -1, maxDamage = -5100, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="condition", type = CONDITION_BLEEDING, interval = 3000, chance = 100, minDamage = -1380, maxDamage = -2400, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 10000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -20, maxDamage = -1075, length = 6, effect = CONST_ME_GREEN_FIREWORKS, target = false}
}

monster.defenses = {
	defense = 115,
	armor = 115,
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 90, maxDamage = 5200, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -7},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = -3},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
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