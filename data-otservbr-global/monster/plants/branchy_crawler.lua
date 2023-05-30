local mType = Game.createMonsterType("Branchy Crawler")
local monster = {}

monster.description = "a branchy crawler"
monster.experience = 17860
monster.outfit = {
	lookType = 1297,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1931
monster.Bestiary = {
	class = "Plant",
	race = BESTY_RACE_PLANT,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 3394,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Rotten Wasteland."
	}

monster.health = 27000
monster.maxHealth = 27000
monster.race = "blood"
monster.corpse = 33809
monster.speed = 235
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
	targetDistance = 1,
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
	{text = "Bones are just sticks. They break easily.", yell = false},
	{text = "Decay!", yell = false},
	{text = "I'll make you crawl, too!", yell = false}
}

monster.loot = {
	{name = "crystal coin", chance = 50230},
	{name = "ultimate health potion", chance = 8470, maxCount = 9},
	{id = 33938, chance = 7240}, -- roots
	{name = "gold ingot", chance = 6630},
	{name = "blue gem", chance = 2620},	
	{name = "terra legs", chance = 1546},
	{name = "violet gem", chance = 920},
	{id = 33982, chance = 460}, -- crawler's essence
	{name = "green gem", chance = 155},
	{name = "nightmare blade", chance = 150},	
	{name = "hammer of wrath", chance = 110},
	{name = "crystal crossbow", chance = 465},
	{name = "twiceslicer", chance = 460},
	{name = "ruthless axe", chance = 99},	
	{name = "crystalline sword", chance = 310},
	{id = 34109, chance = 10} -- bag you desire
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -950},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -1100, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYAREA, target = true},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_EARTHDAMAGE, minDamage = -450, maxDamage = -900, radius = 5, effect = CONST_ME_SMALLPLANTS, target = true},	
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_PHYSICALDAMAGE, minDamage = -1300, maxDamage = -1345, radius = 2, effect = GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_HOLYDAMAGE, minDamage = -1000, maxDamage = -1400, radius = 4, effect = CONST_ME_HOLYDAMAGE, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -1000, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_PIERCINGBOLT, effect = CONST_ME_GREEN_RINGS, target = true},
	{name ="condition", interval = 2000, chance = 20, type = CONDITION_ROOTED, minDamage = -1100, maxDamage = -1300, radius = 4, effect = CONST_ME_SMALLPLANTS, duration = 5000, target = true}, 
	{name ="root", interval = 2000, chance = 10, target = true}	

}

monster.defenses = {
	defense = 90,
	armor = 105
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = -9},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)