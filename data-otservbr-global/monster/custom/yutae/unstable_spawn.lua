local mType = Game.createMonsterType("Unstable Spawn")
local monster = {}

monster.description = "an unstable spawn"
monster.experience = 80820
monster.outfit = {
	lookType = 1219,
	lookHead = 114,
	lookBody = 119,
	lookLegs = 95,
	lookFeet = 81,
	lookAddons = 0,
	lookMount = 0
}

--monster.raceId = 1668
--monster.Bestiary = {
--	class = "Magical",
--	race = BESTY_RACE_MAGICAL,
--	toKill = 2500,
--	FirstUnlock = 100,
--	SecondUnlock = 1000,
--	CharmsPoints = 50,
--	Stars = 4,
--	Occurrence = 0,
--	Locations = "Yutae."
--	}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "undead"
monster.corpse = 6323
monster.speed = 1000
monster.manaCost = 200000

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 200,
	color = 81
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "crystal coin", chance = 20000, maxCount = 5},
	{name = "giant ruby", chance = 1600},
	{id = 28570, chance = 10000}, -- glowing rune
	{name = "great spirit potion", chance = 10000, maxCount = 3},
	{name = "fire mushroom", chance = 10000, maxCount = 6},
	{name = "small amethyst", chance = 9000, maxCount = 14},
	{name = "slime heart", chance = 3000},
	{name = "piece of dead brain", chance = 4900},
	{name = "platinum coin", chance = 100000, maxCount = 60},
	{name = "ultimate health potion", chance = 10000, maxCount = 3},
	{name = "small topaz", chance = 90000, maxCount = 5},
	{name = "small emerald", chance = 90000, maxCount = 5},
	{id= 3039, chance = 9800, maxCount = 10}, -- red gem
	{name = "orb", chance = 66000, maxCount = 5},
	{name = "purple tome", chance = 633},
	{name = "great mana potion", chance = 10000, maxCount = 3},
	{name = "demonic essence", chance = 4300},
	{id = 28568, chance = 10000}, -- inkwell
	{name = "small ruby", chance = 90000, maxCount = 5},
	{name = "talon", chance = 8990},
	{name = "might ring", chance = 4990},
	{name = "stone skin amulet", chance = 4990},	
	{name = "devil helmet", chance = 6990},
	{name = "demonrage sword", chance = 400},
	{id = 7393, chance = 390}, -- demon trophy
	{name = "giant sword", chance = 1250},
	{name = "demon shield", chance = 1250},
	{name = "magic plate armor", chance = 550},
	{name = "golden armor", chance = 600},
	{name = "paladin armor", chance = 700},
	{name = "steel boots", chance = 1300},
	{name = "amulet of loss", chance = 20000},
	{name = "magma amulet", chance = 1000},
	{name = "wedding ring", chance = 1},
	{name = "wand of inferno", chance = 500},
	{name = "mastermind shield", chance = 100},
	{name = "golden legs", chance = 500},
	{name = "golden boots", chance = 1},
	{name = "platinum amulet", chance = 350},
	{name = "wand of everblazing", chance = 1300},
	{name = "fire axe", chance = 5500},
	{name = "moon backpack", chance = 10}
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, minDamage = -100, maxDamage = -300},
	{name ="combat", interval = 3000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -20, maxDamage = -1880, range = 9, radius = 2, shootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_HITBYFIRE, target = true},
	{name ="combat", interval = 5000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -20, maxDamage = -1880, range = 4, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_SOUND_YELLOW, target = true},
	{name ="combat", interval = 6000, chance = 75, type = COMBAT_LIFEDRAIN, minDamage = -505, maxDamage = -5000, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 10000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -20, maxDamage = -4075, length = 9, effect = CONST_ME_SOUND_YELLOW, target = false},
	{name ="combat", interval = 1000, chance = 100, type = COMBAT_HOLYDAMAGE, minDamage = -400, maxDamage = -475, radius = 3, effect = CONST_ME_STUN, target = false},	
	{name ="combat", interval = 3000, chance = 50, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -433, radius = 1, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_STUN, target = true},		
	{name ="combat", interval = 5000, chance = 1, type = COMBAT_HOLYDAMAGE, minDamage = -1020, maxDamage = -4000, radius = 12, effect = CONST_ME_FIREWORK_YELLOW, target = false}
}

monster.defenses = {
	defense = 478,
	armor = 278,
	{name ="combat", interval = 1000, chance = 100, type = COMBAT_HEALING, minDamage = 1, maxDamage = 250, effect = CONST_ME_MAGIC_YELLOW, target = false},
	{name ="speed", interval = 2000, chance = 8, speedChange = 1400, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = 90},
	{type = COMBAT_DEATHDAMAGE , percent = -45}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
