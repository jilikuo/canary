local mType = Game.createMonsterType("Bazir")
local monster = {}

monster.description = "Bazir"
monster.experience = 30000000
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1900000
monster.maxHealth = 1900000
monster.race = "fire"
monster.corpse = 4097
monster.speed = 1666
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 5,
	health = 10,
	damage = 10,
	random = 75,
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 3000,
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
		{name = "bazir", chance = 50, interval = 30000, count = 3}
	}
}

monster.voices = {
	interval = 3000,
	chance = 45,
	{text = "COME HERE! FREE ITEMS FOR EVERYONE!", yell = true},
	{text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!", yell = false},
	{text = "Slay your friends and I will spare you!", yell = true},
	{text = "DON'T BE AFRAID! I AM COMING IN PEACE!", yell = true},
	{text = "VENHA PEGAR SUA PRIMAL BAG GRATUITA!!", yell = true}
}

monster.loot = {
	{id = 3025, chance = 3500}, -- ancient amulet
	{id = 3116, chance = 9000}, -- big bone
	{id = 3027, chance = 15000, maxCount = 150}, -- black pearl
	{id = 3041, chance = 1500}, -- blue gem
	{id = 3079, chance = 4000}, -- boots of haste
	{id = 3070, chance = 3500}, -- moonlight rod
	{id = 3076, chance = 2500}, -- crystal ball
	{id = 3008, chance = 1500}, -- crystal necklace
	{id = 3007, chance = 5500}, -- crystal ring
	{id = 3420, chance = 15500}, -- demon shield
	{id = 3356, chance = 11000}, -- devil helmet
	{id = 3275, chance = 20000}, -- double axe
	{id = 3322, chance = 4500}, -- dragon hammer
	{id = 3051, chance = 13500}, -- energy ring
	{id = 3320, chance = 17000}, -- fire axe
	{id = 3281, chance = 12500}, -- giant sword
	{id = 3043, chance = 99900, maxCount = 400}, -- crystal coin
	{id = 3043, chance = 88800, maxCount = 300}, -- crystal coin
	{id = 3043, chance = 77700, maxCount = 200}, -- crystal coin
	{id = 3031, chance = 66600, maxCount = 100}, -- crystal coin
	{id = 3063, chance = 8000}, -- gold ring
	{id = 3364, chance = 5000}, -- golden legs
	{id = 2903, chance = 7500}, -- golden mug
	{id = 3306, chance = 4500}, -- golden sickle
	{id = 3066, chance = 3500}, -- snakebite rod
	{id = 3038, chance = 1500}, -- green gem
	{id = 3072, chance = 2500}, -- wand of decay
	{id = 3284, chance = 7500}, -- ice rapier
	{id = 3061, chance = 1000}, -- life crystal
	{id = 3046, chance = 11500}, -- magic light wand
	{id = 3366, chance = 3000}, -- magic plate armor
	{id = 3414, chance = 7500}, -- mastermind shield
	{id = 3048, chance = 5000}, -- might ring
	{id = 3062, chance = 4000}, -- mind stone
	{id = 3060, chance = 12000}, -- orb
	{id = 3055, chance = 4500}, -- platinum amulet
	{id = 3084, chance = 4500}, -- protection amulet
	{id = 2848, chance = 2600}, -- purple tome
	{id = 3098, chance = 13000}, -- ring of healing
	{id = 3006, chance = 3500}, -- ring of the sky
	{id = 3054, chance = 13000}, -- silver amulet
	{id = 3290, chance = 15500}, -- silver dagger
	{id = 3324, chance = 5000}, -- skull staff
	{id = 3033, chance = 13500, maxCount = 200}, -- small amethyst
	{id = 3028, chance = 9500, maxCount = 50}, -- small diamond
	{id = 3032, chance = 15500, maxCount = 100}, -- small emerald
	{id = 3029, chance = 13500, maxCount = 100}, -- small sapphire
	{id = 3049, chance = 9500}, -- stealth ring
	{id = 3081, chance = 4000}, -- stone skin amulet
	{id = 3058, chance = 2500}, -- strange symbol
	{id = 3034, chance = 14000, maxCount = 70}, -- talon
	{id = 2993, chance = 14500}, -- teddy bear
	{id = 3309, chance = 1350}, -- thunder hammer
	{id = 3265, chance = 20000}, -- two handed sword
	{id = 3002, chance = 100}, -- voodoo doll
	{id = 3069, chance = 3500}, -- necrotic rod
	{id = 3026, chance = 12500, maxCount = 150}, -- white pearl
	{name = "bag you desire", chance = 500},
	{name = "primal bag", chance = 50},
	{name = "giant topaz", chance = 2000, maxCount = 100},
	{name = "sliver", chance = 20000, minCount = 1, maxCount = 20},
	{name = "exalted core", chance = 2000, maxCount = 2}
}

monster.attacks = {
	{name ="melee", interval = 500, chance = 100, skill = 400, attack = 650},
	{name ="combat", interval = 500, chance = 17, type = COMBAT_MANADRAIN, minDamage = -100, maxDamage = -10000, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF, target = false},
	{name ="drunk", interval = 500, chance = 17, range = 12, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="strength", interval = 500, chance = 19, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 500, chance = 23, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -13200, radius = 8, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 500, chance = 20, type = COMBAT_MANADRAIN, minDamage = -400, maxDamage = -10200, radius = 8, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="speed", interval = 500, chance = 22, speedChange = -3900, radius = 6, effect = CONST_ME_POISONAREA, target = false, duration = 60000},
	{name ="strength", interval = 500, chance = 18, radius = 5, effect = CONST_ME_HITAREA, target = false},
	{name ="outfit", interval = 500, chance = 12, radius = 8, effect = CONST_ME_LOSEENERGY, target = false, duration = 5000, outfitMonster = "demon"},
	{name ="outfit", interval = 300, chance = 12, radius = 8, effect = CONST_ME_LOSEENERGY, target = false, duration = 5000, outfitItem = 3058},
	{name ="combat", interval = 500, chance = 44, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -8900, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 500, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -500, maxDamage = -3850, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{name ="combat", interval = 600, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 10000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 300, chance = 25, type = COMBAT_HEALING, minDamage = 2000, maxDamage = 3000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 400, chance = 8, speedChange = 1400, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000},
	{name ="invisible", interval = 300, chance = 4, effect = CONST_ME_MAGIC_BLUE},
	{name ="invisible", interval = 1000, chance = 17, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 300, chance = 2, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 7000, outfitItem = 2916}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 45},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 99},
	{type = COMBAT_LIFEDRAIN, percent = 99},
	{type = COMBAT_MANADRAIN, percent = 99},
	{type = COMBAT_DROWNDAMAGE, percent = 99},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 66},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
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
