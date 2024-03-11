local mType = Game.createMonsterType("Ragged Apocalypse")
local monster = {}

monster.description = "Apocalypse"
monster.experience = 75000000
monster.outfit = {
	lookType = 12,
	lookHead = 58,
	lookBody = 32,
	lookLegs = 94,
	lookFeet = 85,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3000000
monster.maxHealth = 3000000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 2000
monster.manaCost = 0

monster.changeTarget = {
	interval = 1000,
	chance = 70
}

monster.strategiesTarget = {
	nearest = 25,
	health = 25,
	damage = 25,
	random = 25,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.bosstiary = {
	bossRaceId = 2351,
	bossRace = RARITY_NEMESIS
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 2500,
	chance = 30,
	{text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!", yell = true},
	{text = "DESTRUCTION!", yell = true},
	{text = "CHAOS!", yell = true},
	{text = "DEATH TO ALL!", yell = true},
	{text = "I'VE COME TO BRING YOU DOOM!", yell = true},
	{text = "I CAN NEVER BE KILLED BY MORTALS", yell = true},
	{text = "BRING ME DOWN ONCE, AND I'LL PUNISH YOU TWICE, MORTAL", yell = true},
	{text = "MY POWER IS ENDLESS", yell = true},
	{text = "THIS IS ARMAGEDDON!", yell = true},
	{text = "I'LL EAT YOUR ASS WITH SAND", yell = true},
	{text = "DIE DISGRACEFUL ONE!", yell = true}
}

monster.loot = {
	{id = 3025, chance = 13500}, -- ancient amulet
	{id = 3116, chance = 19000}, -- big bone
	{name = "black pearl", chance = 15000, maxCount = 35},
	{name = "boots of haste", chance = 14000},
	{id = 3076, chance = 22500}, -- crystal ball
	{name = "crystal necklace", chance = 21500},
	{id = 3007, chance = 15500}, -- crystal ring
	{name = "demon shield", chance = 15500},
	{name = "devil helmet", chance = 11000},
	{name = "dragon hammer", chance = 34500},
	{id = 3051, chance = 13500}, -- energy ring
	{name = "fire axe", chance = 17000},
	{name = "giant sword", chance = 12500},
	{name = "platinum coin", chance = 69900, maxCount = 1000},
	{name = "platinum coin", chance = 68800, maxCount = 900},
	{name = "crystal coin", chance = 47700, maxCount = 4000},
	{name = "crystal coin", chance = 36600, maxCount = 2000},
	{name = "gold ring", chance = 28000},
	{name = "golden legs", chance = 15000},
	{name = "giant ruby", chance = 31500},
	{name = "giant sapphire", chance = 31500},
	{name = "giant emerald", chance = 31500},
	{name = "ice rapier", chance = 27500},
	{name = "magic plate armor", chance = 13000},
	{name = "mastermind shield", chance = 17500},
	{name = "purple tome", chance = 12600},
	{name = "ring of the sky", chance = 13500},
	{name = "silver dagger", chance = 15500},
	{name = "skull staff", chance = 25000},
	{name = "talon", chance = 14000, maxCount = 27},
	{name = "teddy bear", chance = 10500},
	{name = "thunder hammer", chance = 3500},
	{id = 3002, chance = 5100}, -- voodoo doll
	{name = "white pearl", chance = 12500, maxCount = 35},
	{id = 34109, chance = 10000}, -- a bag you desire
	{id = 3427, chance = 500}, -- rose shield
	{id = 32918, chance = 100}, -- demon doll
	{id = 25780, chance = 100}, -- blossom bag
	{id = 9594, chance = 300}, -- Sneaky Stabber of Eliteness
	{id = 9596, chance = 450}, -- Squeezing Gear of Girlpower
	{id = 14112, chance = 1000, maxCount = 1000}, -- BAR OF GOLD
	{id = 22722, chance = 10000, maxCount = 2}, -- copper token
	{id = 22516, chance = 4000, maxCount = 100}, -- silver token
	{id = 22721, chance = 1500, maxCount = 50}, -- gold token 
	{id = 30060, chance = 300, maxCount = 30}, -- giant emerald
	{id = 30061, chance = 500, maxCount = 50}, -- giant sapphire
	{id = 30059, chance = 2000, maxcount = 20}, -- giant ruby
	{id = 37109, chance = 1000, maxCount = 200}, -- slivers
	{id = 37110, chance = 50, maxCount = 3}, -- exalted core
	{id = 3253, chance = 160}, -- backpack of holding
	{id = 3255, chance = 16000}, -- drum
	{id = 39546, chance = 100000}, -- Primal Bag
	{id = 34090, chance = 100}, -- soultainter
	{id = 3309, chance = 5000}, -- thunder hammer
	{id = 7424, chance = 7600}, -- lunar staff
	{id = 3360, chance = 10000}, -- golden armor
	{id = 3555, chance = 200}, -- golden boots
	{id = 3556, chance = 10}, -- crocodile boots
	{id = 5793, chance = 10000}, -- die
	{id = 32622, chance = 1230, maxCount = 20},-- giant amethist
	{id = 32623, chance = 1560, maxCount = 50}, -- giant topaz
	{id = 3119, chance = 30000}, -- broken sword
	{id = 10308, chance = 8000}, -- mutated flesh
	{id = 20274, chance = 400}, -- Nightmare Horn
	{id = 34264, chance = 10}, -- tibiapedia
	{id = 6529, chance = 3900}, -- soft boots
	{id = 3399, chance = 1000}, -- elven mail
	{id = 3492, chance = 3000, maxCount = 100}, -- worms
	{id = 37536, chance = 300}, -- changing backpack
	{id = 23507, chance = 3400, maxCount = 100}, -- crystallized anger
	{id = 30397, chance = 450}, -- Cobra Hood
	{name = "ornate shield", chance = 7500},
	{name = "golden warlord sword", chance = 100},
	{name = "dragon ham", chance = 50000, maxCount = 100},
	{name = "energy bar", chance = 20000, maxCount = 100},
	{name = "Coral Comb", chance = 1500},
	{name = "Alicorn Quiver", chance = 1},
	{name = "gold token", chance = 20000, minCount = 10, maxCount = 20},
	{name = "silver token", chance = 15000, minCount = 15, maxCount = 35},
	{name = "Lilypad Backpack", chance = 1},
	{name = "Pannier Backpack", chance = 1},
	{name = "Artefact Box", chance = 1},
	{id = 18339, chance = 1}, -- zaoan chess box
	{id = 6104, chance = 1}, -- jewel case
	{name = "Folded Rift Carpet", chance = 10},
	{name = "Flowery Carpet", chance = 20},
	{name = "Bone Fiddle", chance = 20},
	{name = "Magical Torch", chance = 100},
	{name = "Frozen Starlight", chance = 1000},
	{name = "Sun Catcher", chance = 1000},
	{name = "Moon Mirror", chance = 1000},
	{id = 12669, chance = 1000}, -- star ring
	{name = "Four-leaf Clover", chance = 1},
	{name = "Decorative Ribbon", chance = 10},
	{name = "Carrot on a Stick", chance = 100},
	{id = 12045, chance = 10}, -- music box rare
	{id = 16244, chance = 1000}, -- taming
	{name = "Bag of Apple Slices", chance = 100000},
	{name = "slingshot", chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, minDamage = -3000, maxDamage = -9000},
	{name ="combat", interval = 1000, chance = 19, type = COMBAT_DEATHDAMAGE, minDamage = -1900, maxDamage = -12500, radius = 9, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="speed", interval = 1000, chance = 29, speedChange = -5050, radius = 13, effect = CONST_ME_ROOTS, target = true, duration = 60000},
	{name ="strength", interval = 1000, chance = 19, minDamage = -2600, maxDamage = -5450, radius = 5, effect = CONST_ME_BLUE_GHOST, target = false},
	{name ="combat", interval = 3000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -2300, maxDamage = -9800, range = 9, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 19, type = COMBAT_MANADRAIN, minDamage = -2600, maxDamage = -38700, radius = 10, effect = CONST_ME_PIXIE_EXPLOSION, target = false},
	{name ="combat", interval = 1000, chance = 19, type = COMBAT_ENERGYDAMAGE, minDamage = -2400, maxDamage = -25800, length = 8, spread = 8, effect = CONST_ME_BIGCLOUDS, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 1000, chance = 100, minDamage = -52800, maxDamage = -144000, range = 13, effect = CONST_ME_HITBYPOISON, target = true},
	{name ="condition", type = CONDITION_BLEEDING, interval = 3000, chance = 80, minDamage = -32800, maxDamage = -84000, range = 13, effect = CONST_ME_SLASH, target = true},
	{name ="condition", type = CONDITION_FIRE, interval = 6000, chance = 60, minDamage = -22800, maxDamage = -64000, range = 13, effect = CONST_ME_GHOSTLY_BITE, target = true},
	{name ="condition", type = CONDITION_CURSED, interval = 10000, chance = 40, minDamage = -800, maxDamage = -304000, range = 13, effect = CONST_ME_BIG_SCRATCH, target = true},
	{name ="condition", type = CONDITION_ENERGY, interval = 20000, chance = 20, minDamage = -2800, maxDamage = -34000, range = 13, effect = CONST_ME_ELECTRICALSPARK, target = true},				
	{name ="combat", interval = 1000, chance = 29, type = COMBAT_LIFEDRAIN, minDamage = -2600, maxDamage = -12200, radius = 14, effect = CONST_ME_REDTELEPORT, target = false}
}

monster.defenses = {
	defense = 200,
	armor = 450,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 9000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 8, speedChange = 6480, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 99},
	{type = COMBAT_EARTHDAMAGE, percent = 99},
	{type = COMBAT_FIREDAMAGE, percent = 99},
	{type = COMBAT_LIFEDRAIN, percent = 99},
	{type = COMBAT_MANADRAIN, percent = 45},
	{type = COMBAT_DROWNDAMAGE, percent = 30},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 32}
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
