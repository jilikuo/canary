local mType = Game.createMonsterType("Morgaroth Soul")
local monster = {}

monster.description = "a morgaroth soul"
monster.experience = 55000
monster.outfit = {
	lookType = 300,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

--monster.raceId = 465
--monster.Bestiary = {
--	class = "Undead",
--	race = BESTY_RACE_UNDEAD,
--	toKill = 100,
--	FirstUnlock = 1,
--	SecondUnlock = 50,
--	CharmsPoints = 150,
--	Stars = 4,
--	Occurrence = 0,
--	Locations = "Waiting for Morgaroth to come."
--	}

monster.health = 80000
monster.maxHealth = 80000
monster.race = "undead"
monster.corpse = 8127
monster.speed = 499
monster.manaCost = 0

monster.changeTarget = {
	interval = 1000,
	chance = 100
}

monster.strategiesTarget = {
	nearest = 1,
	health = 1,
	damage = 1,
	random = 97,
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
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Death!", yell = false},
	{text = "Come a little closer!", yell = false},
	{text = "The end is near!", yell = false},
	{text = "MORGAROTH WILL RULE!", yell = true}
}

monster.loot = {
	{name = "Crystal coin", chance = 19000, maxCount = 200},
	{name = "platinum coin", chance = 5200, maxCount = 40},
	{id = 3046, chance = 14850}, -- magic light wand
	{name = "mastermind shield", chance = 3000},
	{name = "scythe", chance = 9000},
	{name = "orichalcum pearl", chance = 1400, maxCount = 4},
	{id = 6299, chance = 330}, -- death ring
	{name = "demonic essence", chance = 10600, maxCount = 5},
	{name = "flask of demonic blood", chance = 35000},
	{name = "nightmare blade", chance = 12880},
	{name = "great mana potion", chance = 1000},
	{name = "glacier kilt", chance = 330},
	{name = "ultimate health potion", chance = 9600},
	{name = "skullcracker armor", chance = 270},
	{name = "underworld rod", chance = 910},
	{name = "golden armor", chance = 2000},
	{name = "giant topaz", chance = 1000},
	{name = "pirate backpack", chance = 10},
	{name = "boots of haste", chance = 5000},
	{name = "rift bow", chance = 2500},
	{id = 8896, chance = 2500}, -- slightly rusted armor
	{name = "mystical hourglass", chance = 530}
}

monster.attacks = {
	{name ="melee", interval = 1200, chance = 100, minDamage = -10, maxDamage = -1220},
	{name ="combat", interval = 1300, chance = 33, type = COMBAT_PHYSICALDAMAGE, minDamage = -10, maxDamage = -1065, range = 13, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1350, chance = 17, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -1320, length = 10, spread = 7, target = false},
	{name ="combat", interval = 1250, chance = 23, type = COMBAT_PHYSICALDAMAGE, minDamage = -10, maxDamage = -1100, length = 10, spread = 9, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 1225, chance = 31, type = COMBAT_DEATHDAMAGE, minDamage = -25, maxDamage = -1175, radius = 10, target = false},
	{name ="melee", interval = 1950, chance = 90, minDamage = -10, maxDamage = -1420},
	{name ="combat", interval = 1800, chance = 19, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -2165, range = 5, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1475, chance = 11, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -2720, length = 4, spread = 3, target = false},
	{name ="combat", interval = 1650, chance = 24, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -2300, length = 3, spread = 5, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 1425, chance = 9, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -2275, radius = 2, target = false}
}

monster.defenses = {
	defense = 350,
	armor = 350,
	{name ="combat", interval = 1000, chance = 35, type = COMBAT_HEALING, minDamage = 130, maxDamage = 2205, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 1450, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 55},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
