local mType = Game.createMonsterType("Goshnar's Malice")
local monster = {}

monster.description = "Goshnar's Malice"
monster.experience = 1000000
monster.outfit = {
	lookType = 1306,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 600000
monster.maxHealth = 600000
monster.race = "undead"
monster.corpse = 33871
monster.speed = 150

monster.changeTarget = {
	interval = 2000,
	chance = 10
}

monster.bosstiary = {
	bossRaceId = 1901,
	bossRace = RARITY_ARCHFOE,
	storageCooldown = Storage.Quest.U12_40.SoulWar.GoshnarMaliceTimer
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 8,
	summons = {
		{name = "dreadful harvester", chance = 40, interval = 1000, count = 4},
		{name = "malicious soul", chance = 30, interval = 1000, count = 4}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "GOSHNAR'S MALICE PREPARES TO DEVOUR A TRAPPED SOUL!", yell = true}
}

monster.loot = {
	-- comum
	{name = "platinum coin", chance = 100000, minCount = 1, maxCount = 200},
	{name = "crystal coin", chance = 100000, minCount = 20, maxCount = 350},

	{name = "ultimate spirit potion", chance = 24000, minCount = 1, maxCount = 500},		
	{name = "supreme health potion", chance = 23000, minCount = 1, maxCount = 500},
	{name = "ultimate mana potion", chance = 22000, minCount = 1, maxCount = 500},

	{name = "berserk potion", chance = 20000, minCount = 1, maxCount = 100},	
	{name = "bullseye potion", chance = 19000, minCount = 1, maxCount = 100},	
	{name = "mastermind potion", chance = 18000, minCount = 1, maxCount = 100},			

	{name = "Giant Amethyst", chance = 16000, maxCount = 5},
	{name = "giant sapphire", chance = 15000, maxCount = 5},
	{name = "giant topaz", chance = 14000, maxCount = 5},	
	{id = 281, chance = 13000, maxCount = 2}, -- giant shimmering pearl (green)
	{name = "dragon figurine", chance = 12500, maxCount = 3},	

	{name = "green gem", chance = 12000, maxCount = 2},	
	{name = "yellow gem", chance = 11500, maxCount = 2},		
	{name = "blue gem", chance = 11000, maxCount = 2},
	{name = "violet gem", chance = 10000, maxCount = 2},	
	{name = "white gem", chance = 9000, maxCount = 2},
	{id= 3039, chance = 8000, maxCount = 3}, -- red gem		

	{name = "malice's horn", chance = 4000},		

	-- semi-raro
	{name = "malice's spine", chance = 2000},

	-- raro
	{name = "figurine of malice", chance = 400},
	{name = "bracelet of strengthening", chance = 400},
	{name = "spectral horseshoe", chance = 400},	
	{name = "the skull of a beast", chance = 400},

	-- muito raro
	{name = "bag you desire", chance = 400}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2000},
	{name ="combat", interval = 2000, chance = 22, type = COMBAT_ICEDAMAGE, minDamage = -450, maxDamage = -1400, length = 10, spread = 4, effect = CONST_ME_ICEAREA, target = false},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -350, maxDamage = -1000, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true}
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{name ="speed", interval = 1000, chance = 20, speedChange = 100, effect = CONST_ME_MAGIC_RED, target = false, duration = 30000},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 350, maxDamage = 1250, effect = CONST_ME_MAGIC_BLUE, target = false},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
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
