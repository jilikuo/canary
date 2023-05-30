local mType = Game.createMonsterType("Emerald Tortoise")
local monster = {}

monster.description = "a Emerald Tortoise"
monster.experience = 77777
monster.outfit = {
	lookType = 1550,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 70000
monster.maxHealth = 70000
monster.race = "blood"
monster.corpse = 39291
monster.speed = 160
monster.manaCost = 0
monster.maxSummons = 0

monster.raceId = 2268
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 5000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 1,
	Locations = "Sparkling Pools"
}

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
	{text = "Shllpp...", yell = false},
}

monster.loot = {
	{name = "Emerald Tortoise Shell", chance = 28590},
	{name = "Crystal Coin", chance = 15520, minCount = 1, maxCount = 6},
	{name = "Great Spirit Potion", chance = 13360, minCount = 1, maxCount = 2},
	{name = "Blue Crystal Shard", chance = 4030},
	{name = "Green Crystal Fragment", chance = 3950},
	{name = "Violet Gem", chance = 3950},
	{name = "Red Crystal Fragment", chance = 3350},
	{name = "Yellow Gem", chance = 3320},
	{name = "White Pearl", chance = 3240},
	{name = "Green Crystal Shard", chance = 2900},
	{name = "Green Gem", chance = 2870},
	{name = "Orichalcum Pearl", chance = 2640, minCount = 1, maxCount = 2},
	{id = 282, chance = 2420}, -- Giant Shimmering Pearl (Green)
	{id = 3039, chance = 2420}, -- Red Gem
	{name = "Black Pearl", chance = 2160, minCount = 1, maxCount = 2},
	{name = "Gold Ingot", chance = 333, minCount = 1, maxCount = 27},
	{name = "Primal Bag", chance = 1}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1450, maxDamage = -6500},
	{name ="combat", interval = 3000, chance = 60, type = COMBAT_ENERGYDAMAGE, minDamage = -1400, maxDamage = -3500, range = 5, shootEffect = CONST_ANI_ENERGY, target = true},
	{name ="lavafungus ring", interval = 5000, chance = 50, minDamage = -600, maxDamage = -5650},
}

monster.defenses = {
	defense = 210,
	armor = 200,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 5},
	{type = COMBAT_MANADRAIN, percent = 5},
	{type = COMBAT_DROWNDAMAGE, percent = 5},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)