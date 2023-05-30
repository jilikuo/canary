local mType = Game.createMonsterType("Fungosaurus")
local monster = {}

monster.description = "a Fungosaurus"
monster.experience = 0
monster.outfit = {
	lookType = 1555,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 130000
monster.maxHealth = 130000
monster.race = "blood"
monster.corpse = 39311
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

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Rraaaaa!", yell = false},
	{text = "CHEHEHE!!!", yell = false},
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

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, minDamage = -3000, maxDamage = -4801},
	{name ="combat", interval = 2000, chance = 57, type = COMBAT_PHYSICALDAMAGE, minDamage = -3800, maxDamage = -5500, effect = CONST_ME_YELLOWSMOKE, target = true},
	{name ="combat", interval = 3000, chance = 41, type = COMBAT_LIFEDRAIN, minDamage = -3800, maxDamage = -6100, radius = 4, effect = CONST_ME_DRAWBLOOD, target = false},
}

monster.defenses = {
	defense = 110,
	armor = 120,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)