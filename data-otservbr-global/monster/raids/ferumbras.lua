local mType = Game.createMonsterType("Ferumbras")
local monster = {}

monster.description = "Ferumbras"
monster.experience = 120000000
monster.outfit = {
	lookType = 229,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 12000000
monster.maxHealth = 12000000
monster.race = "venom"
monster.corpse = 6078
monster.speed = 860
monster.manaCost = 0

monster.changeTarget = {
	interval = 15000,
	chance = 50
}

monster.bosstiary = {
	bossRaceId = 231,
	bossRace = RARITY_NEMESIS
}

monster.strategiesTarget = {
	nearest = 10,
	health = 20,
	damage = 50,
	random = 20,
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
	targetDistance = 2,
	runHealth = 2500,
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
	maxSummons = 9,
	summons = {
		{name = "Hazardous Phantom", chance = 100, interval = 5000, count = 9}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "NO ONE WILL STOP ME THIS TIME!", yell = true},
	{text = "THE POWER IS MINE!", yell = true},
	{text = "I returned from death and you dream about defeating me?", yell = false},
	{text = "Witness the first seconds of my eternal world domination!", yell = false},
	{text = "Even in my weakened state I will crush you all!", yell = false}
}

monster.loot = {
	{id = 5903, chance = 100000, unique = true}, -- ferumbras' hat
	{id = 3043, chance = 98000, maxCount = 2040}, -- crystal coin
	{id = 9058, chance = 75000, maxCount = 100}, -- gold ingot
	{id = 3422, chance = 20000}, -- great shield
	{id = 8075, chance = 19000}, -- spellbook of lost souls
	{id = 3360, chance = 18500}, -- golden armor
	{id = 3364, chance = 18000}, -- golden legs
	{id = 8074, chance = 17500}, -- spellbook of mind control
	{id = 8040, chance = 17000}, -- velvet mantle
	{id = 3420, chance = 16500}, -- demon shield
	{id = 8057, chance = 16000}, -- divine plate
	{id = 821, chance =  15600}, -- magma legs
	{id = 3442, chance = 15000}, -- tempest shield
	{id = 3010, chance = 14500}, -- emerald bangle
	{id = 823, chance =  13900}, -- glacier kilt
	{id = 822, chance =  13600}, -- lightning legs
	{id = 3439, chance = 13000}, -- phoenix shield
	{id = 8090, chance = 12600}, -- spellbook of dark mysteries
	{id = 812, chance =  12300}, -- terra legs
	{id = 8102, chance = 12000}, -- emerald sword
	{id = 7405, chance = 11600}, -- havoc blade
	{id = 7451, chance = 11200}, -- shadow sceptre
	{id = 3032, chance = 11000, maxCount = 100}, -- small emerald
	{id = 281, chance =  10400, maxCount = 100}, -- giant shimmering pearl (green)
	{id = 282, chance =  10300, maxCount = 100}, -- giant shimmering pearl (brown)
	{id = 3366, chance = 10000}, -- magic plate armor
	{id = 3414, chance =  9700}, -- mastermind shield
	{id = 7417, chance =  9500}, -- runed sword
	{id = 8076, chance =  9300}, -- spellscroll of prophecies
	{id = 7427, chance =  9000}, -- chaos mace
	{id = 8098, chance =  8500}, -- demonwing axe
	{id = 8041, chance =  8000}, -- greenwood coat
	{id = 3029, chance =  7600, maxCount = 100}, -- small sapphire
	{id = 3026, chance =  7000, maxCount = 100}, -- white pearl
	{id = 7407, chance =  6666}, -- haunted blade
	{id = 8096, chance =  6600}, -- hellforged axe
	{id = 7411, chance =  6000}, -- ornamented axe
	{id = 3033, chance =  5555, maxCount = 100}, -- small amethyst
	{id = 9057, chance =  5550, maxCount = 100}, -- small topaz
	{id = 7382, chance =  5500}, -- demonrage sword
	{id = 7422, chance =  5000}, -- jade hammer
	{id = 3035, chance =  4444, maxCount = 100}, -- platinum coin
	{id = 7423, chance =  4440}, -- skullcrusher
	{id = 5944, chance =  4400, maxCount = 100}, -- soul orb
	{id = 6529, chance = 3000}, -- pair of soft boots
	{name = "golden boots", chance = 2000},
	{name = "crocodile boots", chance = 500},	
	{id = 6104, chance = 5000}, -- jewel case
	{id = 16244, chance = 1000}, -- music box
	{id = 23525, chance = 1000}, -- energetic backpack
	{name = "ornate shield", chance = 7500},
	{name = "golden warlord sword", chance = 100},
	{name = "dragon ham", chance = 10000, maxCount = 100},
	{name = "energy bar", chance = 10000, maxCount = 100},
	{name = "Coral Comb", chance = 1500},
	{name = "Alicorn Quiver", chance = 100},
	{name = "gold token", chance = 5000, minCount = 1, maxCount = 20},
	{name = "silver token", chance = 15000, minCount = 1, maxCount = 20},
	{name = "Lilypad Backpack", chance = 1},
	{name = "Pannier Backpack", chance = 1},
	{name = "Artefact Box", chance = 1},	
	{name = "Folded Rift Carpet", chance = 10},
	{name = "Flowery Carpet", chance = 20},
	{name = "Bone Fiddle", chance = 20},
	{name = "Magical Torch", chance = 100},
	{name = "Frozen Starlight", chance = 1000},
	{name = "Sun Catcher", chance = 1000},
	{name = "Moon Mirror", chance = 1000},
	{id = 12669, chance = 1000}, -- star ring
	{name = "Four-leaf Clover", chance = 1},
	{id = 3399, chance = 1000}, -- elven mail
	{id = 3492, chance = 3000, maxCount = 100}, -- worms
	{id = 37536, chance = 300}, -- changing backpack
	{id = 39546, chance = 2500}, -- Primal Bag
	{id = 34090, chance = 100}, -- soultainter
	{id = 3309, chance = 5000}, -- thunder hammer
	{id = 3253, chance = 160}, -- backpack of holding
	{id = 37110, chance = 5000, maxCount = 3}, -- exalted core	
	{id = 37109, chance = 5000, maxCount = 200}, -- slivers
	{id = 34109, chance = 10000}, -- a bag you desire
	{id = 3427, chance = 500}, -- rose shield
	{id = 32918, chance = 100}, -- demon doll
	{id = 25780, chance = 100}, -- blossom bag
	{id = 9594, chance = 3000}, -- Sneaky Stabber of Eliteness
	{id = 9596, chance = 4500}, -- Squeezing Gear of Girlpower
  	{ id = 28484, chance = 10000 }, -- blueberry cupcake
  	{ id = 28485, chance = 10000 }, -- strawberrry cupcake
  	{ id = 28486, chance = 10000 },  -- lemon cupcake
  	{ id = 20350, chance = 100}, -- cake backpack
  	{ id = 20349, chance = 1000}, -- cake tapestry
   	{ id = 20350, chance = 10000}, -- cake tapestry
	{id = 822, chance = 1800}, -- lightning legs
	{id = 8041, chance = 40}, -- greenwood coat
	{id = 3029, chance = 11111, maxCount = 100}, -- small sapphire
	{id = 7416, chance = 800}, -- bloody edge
	{id = 7427, chance = 30}, -- chaos mace
	{id = 3360, chance = 20}, -- golden armor
	{id = 8102, chance = 10}, -- emerald sword
	{id = 22773, chance = 4900}, -- boots of homecoming
	{id = 3031, chance = 23456, maxCount = 100}, -- gold coin
	{id = 3032, chance = 12222, maxCount = 100}, -- small emerald
	{id = 281, chance = 1000}, -- giant shimmering pearl (green)
	{id = 3039, chance = 1000}, -- red gem
	{id = 8040, chance = 55}, -- velvet mantle
	{id = 3010, chance = 45}, -- emerald bangle
	{id = 7423, chance = 35}, -- skullcrusher
	{id = 3033, chance = 9999, maxCount = 10}, -- small amethyst
	{id = 22764, chance = 4800}, -- ferumbras' staff
	{id = 7422, chance = 25}, -- jade hammer
	{id = 3026, chance = 8888, maxCount = 100}, -- white pearl
	{id = 7418, chance = 1666}, -- nightmare blade
	{id = 3439, chance = 15}, -- phoenix shield
	{id = 3420, chance = 63}, -- demon shield
	{id = 30146, chance = 1151}, -- elven parchment
	{id = 3031, chance = 12345, maxCount = 100}, -- gold coin
	{id = 823, chance = 800}, -- glacier kilt
	{id = 3366, chance = 400}, -- magic plate armor
	{id = 22758, chance = 1000, unique = true}, -- death gaze
	{id = 7403, chance = 1888}, -- berserker
	{id = 22866, chance = 1542}, -- rift bow
	{id = 8098, chance = 1323}, -- demonwing axe
	{id = 22731, chance = 3322}, -- rift tapestry
	{id = 7410, chance = 666}, -- queen's sceptre
	{id = 3041, chance = 8008}, -- blue gem
	{id = 3035, chance = 100000, maxCount = 125}, -- platinum coin
	{id = 8100, chance = 423}, -- obsidian truncheon
	{id = 7414, chance = 828}, -- abyss hammer
	{id = 5903, chance = 250}, -- ferumbras' hat
	{id = 22769, chance = 8989}, -- ferumbras' mana keg
	{id = 7382, chance = 80}, -- demonrage sword
	{id = 3038, chance = 4222}, -- green gem
	{id = 3414, chance = 22}, -- mastermind shield
	{id = 7435, chance = 2822}, -- impaler
	{id = 22516, chance = 24000, maxCount = 3}, -- silver token
	{id = 3027, chance = 15432, maxCount = 100}, -- black pearl
	{id = 3028, chance = 13425, maxCount = 100}, -- small diamond
	{id = 22771, chance = 2345}, -- scroll of ascension
	{id = 9057, chance = 9876, maxCount = 100}, -- small topaz
	{id = 22767, chance = 3098}, -- ferumbras' amulet
	{id = 22867, chance = 2525}, -- rift crossbow
	{id = 8057, chance = 1415}, -- divine plate
	{id = 3303, chance = 1700}, -- great axe
	{id = 3422, chance = 111}, -- great shield
	{id = 821, chance = 11}, -- magma legs
	{id = 9058, chance = 800, maxCount = 100}, -- gold ingot
	{id = 7405, chance = 1}, -- havoc blade
	{id = 7411, chance = 6}, -- ornamented axe
	{id = 22737, chance = 3500} -- folded rift carpet
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -2500, maxDamage = -5000},
	{name ="combat", interval = 2000, chance = 50, type = COMBAT_MANADRAIN, minDamage = -666, maxDamage = -66666, range = 7, radius = 3, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="combat", interval = 3000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -80, maxDamage = -43333, length = 8, spread = 3, effect = CONST_ME_REDSMOKE, target = false},
	{name ="combat", interval = 4000, chance = 21, type = COMBAT_LIFEDRAIN, minDamage = -9450, maxDamage = -28800, radius = 6, effect = CONST_ME_EARLY_THUNDER, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 3000, chance = 33, minDamage = -170000, maxDamage = -340000, range = 7, shootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -1900, maxDamage = -15000, range = 4, radius = 3, target = false},
	-- energy damage
	{name ="condition", type = CONDITION_ENERGY, interval = 4000, chance = 44, minDamage = -333333, maxDamage = -444444, radius = 9, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="ferumbras electrify", interval = 5000, chance = 88, target = false},	
	-- fire
	{name ="condition", type = CONDITION_FIRE, interval = 6666, chance = 66, minDamage = -166666, maxDamage = -666666, range = 6, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
	defense = 120,
	armor = 100,
	{name ="combat", interval = 1000, chance = 40, type = COMBAT_HEALING, minDamage = 2900, maxDamage = 9666, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="invisible", interval = 4000, chance = 60, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -3},
	{type = COMBAT_ENERGYDAMAGE, percent = 99},
	{type = COMBAT_EARTHDAMAGE, percent = 99},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 99},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = 66},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
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
