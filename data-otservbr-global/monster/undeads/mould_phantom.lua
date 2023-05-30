local mType = Game.createMonsterType("Mould Phantom")
local monster = {}

monster.description = "a mould phantom"
monster.experience = 18330
monster.outfit = {
	lookType = 1298,
	lookHead = 106,
	lookBody = 60,
	lookLegs = 131,
	lookFeet = 116,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1945
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 3394,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Rotten Wasteland."
	}

monster.health = 28000
monster.maxHealth = 28000
monster.race = "undead"
monster.corpse = 34133
monster.speed = 240
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
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
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Everything decomposes.", yell = false},
	{text = "I love the smell of rotten flesh.", yell = false},
	{text = "The earth will take you back.", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 51111},
	{name = "gold ingot", chance = 10370},
	{name = "violet gem", chance = 4810},
	{name = "green gem", chance = 3333},
	{name = "blue gem", chance = 2590},
	{name = "wand of starstorm", chance = 3700},
	{name = "wand of voodoo", chance = 3332},
	{name = "ornate crossbow", chance = 740},
	{name = "wand of defiance", chance = 2222},
	{id = 23529, chance = 1080}, -- ring of blue plasma
	{id = 23542, chance = 1480}, -- collar of blue plasma
	{id = 34141, chance = 3331}, -- mould heart
	{id = 34148, chance = 1850}, -- mould robe	acho q
	{name = "crystal crossbow", chance = 870},
	{id = 34109, chance = 10} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1150, maxDamage = -1400, radius = 4, effect = CONST_ME_GREEN_RINGS, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -1100, maxDamage = -1300, radius = 3, effect = CONST_ME_HOLYDAMAGE, target = true},	
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1050, maxDamage = -1250, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_SMALLPLANTS, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -550, maxDamage = -1050, length = 6, spread = 2, effect = CONST_ME_SMALLPLANTS, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -666, maxDamage = -888, length = 5, spread = 4, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -1000, maxDamage = -1350, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true}
	-- Chain: const_me-> CONST_ME_GREEN_ENERGY_SPARK, combat_t->COMBAT_EARTHDAMAGE
}

monster.defenses = {
	defense = 75,
	armor = 100
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)