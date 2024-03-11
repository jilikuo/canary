local mType = Game.createMonsterType("Ice Dihsir")
local monster = {}

monster.description = "an ice dihsir"
monster.experience = 245169
monster.outfit = {
	lookType = 1024,
	lookHead = 75,
	lookBody = 86,
	lookLegs = 66,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 1018
}

--monster.raceId = 1622
--monster.Bestiary = {
--	class = "Demon",
--	race = BESTY_RACE_DEMON,
--	toKill = 2500,
--	FirstUnlock = 100,
--	SecondUnlock = 1000,
--	CharmsPoints = 50,
--	Stars = 4,
--	Occurrence = 0,
--	Locations = "Asura Palace's secret basement."
--	}

monster.health = 110000
monster.maxHealth = 110000
monster.race = "undead"
monster.corpse = 39343
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 255,
	color = 85
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = 3031, chance = 22000, maxCount = 100}, -- gold coin
	{id = 3035, chance = 20200, maxCount = 100}, -- platinum coin
	{id = 3043, chance = 10000, maxCount = 6}, -- crystal coin
	{id = 6558, chance = 5000}, -- flask of demonic blood
	{id = 23373, chance = 4000}, -- ultimate mana potion
	{id = 23375, chance = 4000}, -- supreme health potion
	{id = 23374, chance = 4000}, -- ultimate spirit potion
	{id = 3033, chance = 1210, maxCount = 12}, -- small amethyst
	{id = 3028, chance = 2300, maxCount = 12}, -- small diamond
	{id = 3032, chance = 6300, maxCount = 12}, -- small emerald
	{id = 3030, chance = 4350, maxCount = 12}, -- small ruby
	{id = 9057, chance = 5280, maxCount = 12}, -- small topaz
	{name = "Giant Sapphire", chance = 250},
	{id = 3041, chance = 4000}, -- blue gem
	{id = 6299, chance = 1360}, -- death ring
	{id = 6499, chance = 4230}, -- demonic essence
	{id = 8043, chance = 12200}, -- focus cape
	{id = 21974, chance = 80}, -- golden lotus brooch
	{id = 826, chance = 40}, -- magma coat
	{id = 3078, chance = 40}, -- mysterious fetish
	{id = 3574, chance = 40}, -- mystic turban
	{id = 21981, chance = 40}, -- oriental shoes
	{id = 21975, chance = 5600}, -- peacock feather fan
	{id = 5912, chance = 4300}, -- red piece of cloth
	{id = 3016, chance = 2400}, -- ruby necklace
	{id = 3017, chance = 1900}, -- silver brooch
	{id = 5944, chance = 4400}, -- soul orb
	{id = 8074, chance = 1400}, -- spellbook of mind control
	{id = 3076, chance = 500},
	{id = 23521, chance = 12000, maxCount = 20},
	{name = "crystal boots", chance = 8},
	{id = 9028, chance = 1000},
	{name = "life crystal", chance = 10000},
	{name = "Ice Shield", chance = 1},
	{id = 7290, chance = 250},
	{name = "lion rod", chance = 1},
	{name = "rod of destruction", chance = 2},
	{name = "shimmer rod", chance = 10},
	{name = "glacial rod", chance = 100},
	{name = "hailstorm rod", chance = 1000},
	{name = "Northwind Rod", chance = 10000},
	{name = "moonlight rod", chance = 25000},
	{name = "magic plate armor", chance = 2000},
	{name = "Demon Backpack", chance = 1},
	{name = "Demonwing Axe", chance = 2},
	{name = "demon armor", chance = 3},
	{name = "demon legs", chance = 4},
	{name = "demon helmet", chance = 5},
	{name = "Demonbone", chance = 6},
	{name = "Demonrage Sword", chance = 100},
	{name = "Demonbone Amulet", chance = 1000},
	{name = "demon shield", chance = 10000}

}

monster.attacks = {
	{ name = "melee", interval = 1000, chance = 100, minDamage = -1000, maxDamage = -4000 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -2000, maxDamage = -4050, range = 7, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -4050, maxDamage = -6800, length = 8, spread = 3, effect = CONST_ME_ICETORNADO, target = false },
	{ name = "combat", interval = 5000, chance = 9, type = COMBAT_ICEDAMAGE, minDamage = -25050, maxDamage = -25080, radius = 9, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 85, type = COMBAT_ICEDAMAGE, minDamage = -1035, maxDamage = -1235, range = 9, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true},
	{ name = "combat", interval = 2000, chance = 28, type = COMBAT_LIFEDRAIN, minDamage = -3500, maxDamage = -3500, radius = 5, shootEffect = CONST_ANI_ETHEREALSPEAR, effect = CONST_ME_PURPLEENERGY, target = true },
	{ name = "speed", interval = 2000, chance = 13, speedChange = -4000, radius = 3, effect = CONST_ME_MAGIC_RED, target = true, duration = 30000 },
	{ name = "condition", type = CONDITION_BLEEDING, interval = 5000, chance = 100, minDamage = -15000, maxDamage = -18000, range = 2, effect = CONST_ME_DRAWBLOOD, target = true},
	{ name = "condition", type = CONDITION_CURSED, interval = 10000, chance = 100, minDamage = -12000, maxDamage = -21000, range = 9, effect = CONST_ME_SMALLCLOUDS, target = true},
}

monster.defenses = {
	defense = 1500,
	armor = 600,
	{ name = "combat", interval = 1000, chance = 100, type = COMBAT_HEALING, minDamage = 250, maxDamage = 1000, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 620, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 }
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = -25},
	{type = COMBAT_FIREDAMAGE, percent = -30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
