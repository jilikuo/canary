local mType = Game.createMonsterType("Giant Beaver")
local monster = {}

monster.description = "a Giant Beaver"
monster.experience = 16330
monster.outfit = {
	lookType = 1536,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 10290
monster.maxHealth = 10290
monster.race = "blood"
monster.corpse = 0
monster.speed = 182
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
	{text = "The Moon Goddess is ashamed of you!", yell = false},
}

monster.attacks = {
	{name ="melee", interval = 600, chance = 100, minDamage = 5, maxDamage = -15},
	{name ="combat", interval = 1000, chance = 47, type = COMBAT_PHYSICALDAMAGE, minDamage = -10, maxDamage = -15, effect = CONST_ME_YELLOWSMOKE, target = true},
	{name ="combat", interval = 1200, chance = 31, type = COMBAT_LIFEDRAIN, minDamage = -10, maxDamage = -50, radius = 4, effect = CONST_ME_DRAWBLOOD, target = false},
}

monster.defenses = {
	defense = 110,
	armor = 120,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 99},
	{type = COMBAT_ENERGYDAMAGE, percent = 99},
	{type = COMBAT_EARTHDAMAGE, percent = 99},
	{type = COMBAT_FIREDAMAGE, percent = 99},
	{type = COMBAT_LIFEDRAIN, percent = 99},
	{type = COMBAT_MANADRAIN, percent = 99},
	{type = COMBAT_DROWNDAMAGE, percent = 99},
	{type = COMBAT_ICEDAMAGE, percent = 99},
	{type = COMBAT_HOLYDAMAGE , percent = 99},
	{type = COMBAT_DEATHDAMAGE , percent = 99}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)