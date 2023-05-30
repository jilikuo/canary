local mType = Game.createMonsterType("Morgaroth")
local monster = {}

monster.description = "Morgaroth"
monster.experience = 1500000
monster.outfit = {
	lookType = 12,
	lookHead = 2,
	lookBody = 94,
	lookLegs = 78,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 7000000
monster.maxHealth = 700000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 305
monster.manaCost = 0

monster.changeTarget = {
	interval = 1000,
	chance = 45
}

monster.bosstiary = {
	bossRaceId = 229,
	bossRace = RARITY_NEMESIS
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 100,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 3,
	summons = {
		{name = "Morgaroth Soul", chance = 10, interval = 5000, count = 3}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I AM MORGAROTH, LORD OF THE TRIANGLE... AND YOU ARE LOST!", yell = true},
	{text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS!", yell = true},
	{text = "ZATHROTH! LOOK AT THE DESTRUCTION I AM CAUSING IN YOUR NAME!", yell = true},
	{text = "THE TRIANGLE OF TERROR WILL RISE!", yell = true}
}

monster.loot = {
	{name = "platinum coin", chance = 23000, maxCount = 740},
	{name = "crystal coin", chance = 9500, maxCount = 74},
	{name = "demonic essence", chance = 20000, maxCount = 50},
	{name = "green gem", chance = 23000},
	{name = "great mana potion", chance = 23000},
	{name = "small amethyst", chance = 12000, maxCount = 180},
	{name = "devileye", chance = 12000},
	{name = "small emerald", chance = 12000, maxCount = 70},
	{name = "small sapphire", chance = 12000, maxCount = 90},
	{name = "red tome", chance = 12000},
	{name = "ultimate health potion", chance = 12000},
	{name = "talon", chance = 12000, maxCount = 70},
	{name = "demon horn", chance = 12000, maxCount = 20},
	{id = 6299, chance = 12000}, -- death ring
	{id = 3098, chance = 12000}, -- ring of healing
	{name = "chain bolter", chance = 2000},
	{name = "dark lord's cape", chance = 2000},
	{name = "ironworker", chance = 2000},
	{name = "double axe", chance = 3000},
	{name = "great spirit potion", chance = 3000},
	{name = "magic plate armor", chance = 6000},
	{name = "might ring", chance = 21000},
	{name = "mind stone", chance = 8000},
	{id = 3049, chance = 18000}, -- stealth ring
	{name = "fireborn giant armor", chance = 1800},
	{name = "royal crossbow", chance = 560},
	{name = "teddy bear", chance = 1800},
	{name = "white pearl", chance = 1300, maxCount = 110},
	{name = "black pearl", chance = 1300, maxCount = 130},
	{name = "assassin star", chance = 1300, maxCount = 500},
	{name = "demonbone", chance = 1000},
	{name = "golden mug", chance = 100},
	{name = "Morgaroth's heart", chance = 100},
	{name = "obsidian truncheon", chance = 100},
	{name = "stomper", chance = 130},
	{name = "blue gem", chance = 9000, maxCount = 100},
	{name = "gold ring", chance = 9000},
	{name = "demon shield", chance = 9000},
	{id = 3051, chance = 900}, -- energy ring
	{name = "giant sword", chance = 5100},
	{name = "golden legs", chance = 5100},
	{name = "life crystal", chance = 9000},
	{id = 3046, chance = 19000}, -- magic light wand
	{name = "orb", chance = 1900},
	{name = "strange symbol", chance = 900},
	{name = "steel boots", chance = 9000},
	{name = "thunder hammer", chance = 200},
	{name = "small diamond", chance = 450, maxCount = 500},
	{id = 3007, chance = 450}, -- crystal ring
	{name = "fire axe", chance = 4500},
	{name = "great health potion", chance = 4500},
	{name = "mastermind shield", chance = 4500},
	{name = "dragon robe", chance = 450},
	{name = "molten plate", chance = 450},
	{name = "golden boots", chance = 10},
	{name = "great shield", chance = 1}
}

monster.attacks = {
	{name ="melee", interval = 600, chance = 100, minDamage = -1300, maxDamage = -6550},
	{name ="combat", interval = 600, chance = 46, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -2710, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 380, chance = 43, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -2780, range = 7, radius = 5, effect = CONST_ME_HITAREA, target = false},
	{name ="combat", interval = 600, chance = 36, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -2750, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false},
	{name ="combat", interval = 350, chance = 42, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -3780, range = 7, radius = 5, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="combat", interval = 400, chance = 32, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -2800, range = 7, radius = 13, effect = CONST_ME_SOUND_RED, target = false},
	{name ="combat", interval = 600, chance = 38, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -3850, radius = 14, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 700, chance = 32, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -2900, range = 7, radius = 3, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 500, chance = 32, speedChange = -900, range = 7, effect = CONST_ME_SOUND_RED, target = false, duration = 20000},
	{name ="combat", interval = 300, chance = 20, type = COMBAT_MANADRAIN, minDamage = -1270, maxDamage = -7620, radius = 3, effect = CONST_ME_HITAREA, target = true},
	{name ="dark torturer skill reducer", interval = 400, chance = 25, target = false}
}

monster.defenses = {
	defense = 465,
	armor = 455,
	{name ="combat", interval = 1000, chance = 35, type = COMBAT_HEALING, minDamage = 800, maxDamage = 2700, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 300, maxDamage = 2600, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 400, chance = 80, speedChange = 1470, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 55},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
