local mType = Game.createMonsterType("Magma Bubble")
local monster = {}

monster.description = "magma bubble"
monster.experience = 8000000
monster.outfit = {
	lookType = 1413,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1500000
monster.maxHealth = 1500000
monster.race = "undead"
monster.corpse = 36846
monster.speed = 250
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
}

monster.bosstiary = {
	bossRaceId = 2242,
	bossRace = RARITY_ARCHFOE,
	storageCooldown = Storage.Quest.U12_90.PrimalOrdeal.Bosses.MagmaBubbleTimer
}

monster.strategiesTarget = {
	nearest = 50,
	health = 10,
	damage = 10,
	random = 30,
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
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 100,
	color = 94
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
 
 	-- general valuables
 	-- comum
 	{ name = "gold coin", chance = 100000, maxCount = 69},
 	{ name = "platinum coin", chance = 100000, maxCount = 100},
 	{ name = "crystal coin", chance = 100000, minCount = 100, maxCount = 500},	
  	{ name = "ultimate mana potion", chance = 24653, maxCount = 1000},
  	{ name = "ultimate spirit potion", chance = 23000, maxCount = 1000},  
  	{ name = "supreme health potion", chance = 22612, maxCount = 1000},

  	{ name = "berserk potion", chance = 22449, maxCount = 200},
  	{ name = "mastermind potion", chance = 18367, maxCount = 200},
  	{ name = "bullseye potion", chance = 18190, maxCount = 200},	

  	{ name = "giant emerald", chance = 17000, maxCount = 10},
  	{ name = "giant amethyst", chance = 16000, maxCount = 10},	 
  	{ name = "giant sapphire", chance = 15000, maxCount = 10},
  	{ name = "giant topaz", chance = 14650, maxCount = 10},
  	{ name = "giant ruby", chance = 13082, maxCount = 10}, -- drop que não consta na wiki

  	{ name = "smoldering eye", chance = 13000},
  	
  	--custom
  	{ name = "silver token", chance = 6500, maxCount = 3},
  	{ name = "gold token", chance = 5000, maxCount = 2}, 

 
 	-- boss specific
  	-- addon
  	{ name = "firefighting axe", chance = 25},
 	{ name = "portable flame", chance = 20},
 	-- loot 
  	{ name = "fiery tear", chance = 30},
 
 	-- primal set
  	-- body
 	{ name = "spiritthorn armor", chance = 60},
  	
  	-- head
  	{ name = "alicorn headguard", chance = 145},
     { name = "spiritthorn helmet", chance = 150},	 
  	{ name = "arboreal crown", chance = 165},
  	{ name = "arcanomancer regalia", chance = 160},
  	
  	-- hand
  	{ name = "alicorn quiver", chance = 90},
  	{ name = "arboreal tome", chance = 95}, 
  	{ name = "arcanomancer folio", chance = 92},	
  	
  	-- rings
  	{ name = "alicorn ring", chance = 30},
  	{ name = "spiritthorn ring", chance = 32},
  	{ name = "arboreal ring", chance = 35},	
  	{ name = "arcanomancer sigil", chance = 34},	 

  	-- cupcakes
  	{ id = 28484, chance = 10000 }, -- blueberry cupcake
  	{ id = 28485, chance = 10000 }, -- strawberrry cupcake
  	{ id = 28486, chance = 10000 },  -- lemon cupcake
  	{ id = 20350, chance = 1}, -- cake backpack
  	{ id = 20349, chance = 10},
   	{ id = 20350, chance = 100} -- cake tapestry	
  
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 70, minDamage = 0, maxDamage = -6450},
	{name ="combat", interval = 1100, chance = 55, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -6100, target = false},
	{name ="combat", interval = 1050, chance = 19, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -5800, length = 8, spread = 3, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 1045, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -2500, maxDamage = -8000, radius = 8, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -1700, radius = 4, effect = CONST_ME_MORTAREA, target = true},	
	{name ="combat", interval = 1000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -1, maxDamage = -2000, radius = 9, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 10000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -15000, maxDamage = -25000, radius = 12, effect = CONST_ME_HITBYFIRE, target = false},					
	{name ="combat", interval = 1300, chance = 37, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -5300, target = true},
	{name ="combat", interval = 1250, chance = 28, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -5800, length = 8, spread = 0, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 7000, chance = 28, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -3000, length = 6, spread = 6, effect = CONST_ME_MAGIC_RED, target = false},	
	{name ="firefield", interval = 25000, chance = 100, range = 15, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="condition", type = CONDITION_FIRE, interval = 10000, chance = 100, minDamage = -20800, maxDamage = -53000, range = 13, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true},		
	{name ="combat", interval = 1250, chance = 33, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -11800, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},	
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 900, chance = 35, type = COMBAT_HEALING, minDamage = 400, maxDamage = 6000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 500, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent =  0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
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
