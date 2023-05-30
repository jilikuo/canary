local mType = Game.createMonsterType("Mantosaurus")
local monster = {}

monster.description = "a Mantosaurus"
monster.experience = 52000
monster.outfit = {
	lookType = 1556,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 2274
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 5000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 100,
	Stars = 3,
	Occurrence = 0,
	Locations = "Crystal Enigma"
}

monster.health = 29400
monster.maxHealth = 29400
monster.race = "blood"
monster.corpse = 39315
monster.speed = 205
monster.manaCost = 0
monster.maxSummons = 0

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
	{text = "Klkkk... Klkkk...", yell = false},
}

monster.loot = {
	{name = "Crystal Coin", chance = 25640, minCount = 1, maxCount = 2},
	{name = "Mantosaurus Jaw", chance = 19120},
	{name = "Ultimate Mana Potion", chance = 9660, minCount = 1, maxCount = 3},
	{name = "Silver Brooch", chance = 3920},
	{name = "Red Crystal Fragment", chance = 3570},
	{name = "Cyan Crystal Fragment", chance = 3010},
	{name = "Green Crystal Shard", chance = 3010},
	{name = "Coral Brooch", chance = 2420},
	{id = 3007, chance = 1430}, -- Crystal Ring
	{name = "Gold Ring", chance = 1370},
	{name = "Amulet of Loss", chance = 170},
	{name = "Gold Ingot", chance = 290, maxCount = 21},
	{name = "Primal Bag", chance = 1}
}

monster.attacks = {
	{name ="melee", interval = 455, chance = 100, minDamage = -100, maxDamage = -3001},
	{name ="combat", interval = 600, chance = 47, type = COMBAT_PHYSICALDAMAGE, minDamage = -800, maxDamage = -1500, effect = CONST_ME_YELLOWSMOKE, target = true},
	{name ="combat", interval = 600, chance = 31, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -1500, radius = 4, effect = CONST_ME_ENERGYAREA, target = true},
	{name ="drunk", interval = 600, chance = 10, length = 3, spread = 2, effect = CONST_ME_ENERGYAREA, target = false, duration = 5000},
}

monster.defenses = {
	defense = 110,
	armor = 65,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 5},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)