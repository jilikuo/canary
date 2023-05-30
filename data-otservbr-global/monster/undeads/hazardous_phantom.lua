local mType = Game.createMonsterType("Hazardous Phantom")
local monster = {}

monster.description = "a hazardous phantom"
monster.experience = 66000
monster.outfit = {
	lookType = 1298,
	lookHead = 114,
	lookBody = 80,
	lookLegs = 94,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1933
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 3394,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Claustrophobic Inferno."
	}

monster.health = 70000
monster.maxHealth = 70000
monster.race = "undead"
monster.corpse = 34125
monster.speed = 100
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
	{text = "Ashes to ashes.", yell = false},
	{text = "Burn, baby! Burn!", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 82450, maxCount = 4},
	{name = "Ultimate health Potion", chance = 61170, maxCount = 6},
	{name = "gold ingot", chance = 20348},
	{name = "hailstorm rod", chance = 7977},
	{name = "blue gem", chance = 4195},
	{name = "gemmed figurine", chance = 2311},
	{name = "green gem", chance = 3196},
	{name = "hazardous heart", chance = 3192},
	{id = 281, chance = 2666}, -- giant shimmering pearl
	{name = "hazardous robe", chance = 2135},
	{id = 23544, chance = 2133}, -- collar of red plasma
	{name = "glacial rod", chance = 422},
	{name = "violet gem", chance = 1655},
	{name = "glacier robe", chance = 1066},
	{id = 23542, chance = 966}, -- collar of blue plasma
	{name = "northwind rod", chance = 533},
	{name = "wand of everblazing", chance = 421},
	{name = "bag you desire", chance = 6}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1850, maxDamage = -2200},
	{name ="combat", interval = 3000, chance = 24, type = COMBAT_EARTHDAMAGE, minDamage = -1200, maxDamage = -1700, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_CARNIPHILA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1300, maxDamage = -1900, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = true},
	{name ="speed", interval = 4000, chance = 20, speedChange = -550, range = 6, effect = CONST_ME_ROOTS, target = true, duration = 60000},	
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -1450, maxDamage = -2100, radius = 4, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 33, type = COMBAT_HOLYDAMAGE, minDamage = -1050, maxDamage = -1500, radius = 3, effect = CONST_ME_HOLYAREA, target = false},	
	{name ="combat", interval = 1000, chance = 33, type = COMBAT_LIFEDRAIN, minDamage = -550, maxDamage = -1100, radius = 3, effect = CONST_ME_BLUE_ENERGY_SPARK, target = false},
	{name ="combat", interval = 1000, chance = 33, type = COMBAT_LIFEDRAIN, minDamage = -350, maxDamage = -1660, length = 6, spread = 7, effect = CONST_ME_ORANGE_ENERGY_SPARK, target = false},
	{name ="condition", type = CONDITION_BLEEDING, interval = 5000, chance = 38, minDamage = -328, maxDamage = -8400, range = 5, effect = CONST_ME_SMALLCLOUDS, target = true},				
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -950, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true},
	{name ="combat", interval = 8000, chance = 50, type = COMBAT_HOLYDAMAGE, minDamage = -1200, maxDamage = -3700, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_YELLOW_ENERGY_SPARK, target = true},	
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_HOLYDAMAGE, minDamage = -100, maxDamage = -2170, length = 9, spread = 3, effect = CONST_ME_DIVINE_DAZZLE, target = false},
	{name ="combat", interval = 4000, chance = 14, type = COMBAT_ICEDAMAGE, minDamage = -2200, maxDamage = -2700, range = 7, radius = 3, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true},	
	{name ="combat", interval = 1000, chance = 3, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -2070, length = 7, spread = 3, shootEffect = CONST_ANI_ICE, effect = CONST_ME_CHIVALRIOUS_CHALLENGE, target = false}		
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
	{type = COMBAT_ICEDAMAGE, percent = - 0},
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
