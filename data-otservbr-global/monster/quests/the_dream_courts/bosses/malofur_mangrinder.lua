local mType = Game.createMonsterType("Malofur Mangrinder")
local monster = {}

monster.description = "Malofur Mangrinder"
monster.experience = 55000
monster.outfit = {
	lookType = 1120,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 200000
monster.maxHealth = 200000
monster.race = "blood"
monster.corpse = 30017
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 1000,
	chance = 25
}

monster.bosstiary = {
	bossRaceId = 1696,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "RAAAARGH! I'M MASHING YE TO DUST BOOM!", yell = false},
	{text = "BOOOM!", yell = false},
	{text = "BOOOOM!!!", yell = false},
	{text = "BOOOOOM!!!", yell = false}
}

monster.loot = {
	{name = "ultimate spirit potion", chance = 50000, maxCount = 6},
	{name = "crystal coin", chance = 50000},
	{name = "ultimate mana potion", chance = 50000, maxCount = 14},
	{name = "supreme health potion", chance = 50000, maxCount = 6},
	{name = "gold token", chance = 50000, maxCount = 2},
	{name = "silver token", chance = 100000, maxCount = 2},
	{id = 281, chance = 100000}, -- giant shimmering pearl (green)
	{name = "green gem", chance = 100000},
	{id= 3039, chance = 50000}, -- red gem
	{name = "blue gem", chance = 100000},
	{id = 23529, chance = 50000}, -- ring of blue plasma
	{name = "platinum coin", chance = 50000, maxCount = 5},
	{name = "bullseye potion", chance = 50000, maxCount = 10},
	{name = "piggy bank", chance = 100000},
	{name = "mysterious remains", chance = 100000},
	{name = "energy bar", chance = 100000},
	{id = 23543, chance = 50000}, -- collar of green plasma
	{name = "ring of the sky", chance = 100000},
	{name = "crunor idol", chance = 100000},
	{name = "resizer", chance = 100000},
	{name = "shoulder plate", chance = 100000},
	{name = "malofur's lunchbox", chance = 100000},
	{name = "pomegranate", chance = 50000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2500},
	{name ="combat", interval = 4000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1900, maxDamage = -6000, radius = 7, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 8000, chance = 75, type = COMBAT_EARTHDAMAGE, minDamage = -3300, maxDamage = -3300, range = 7, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_BIGPLANTS, target = true},
	{name ="combat", interval = 18000, chance = 100, type = COMBAT_DEATHDAMAGE, minDamage = -2500, maxDamage = -2500, range = 7, radius = 5, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},	
	{name ="condition", type = CONDITION_BLEEDING, interval = 10000, chance = 50, minDamage = -5000, maxDamage = -15000, range = 3, effect = CONST_ME_SLASH, target = true}
	
}

monster.defenses = {
	defense = 1000,
	armor = 500
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
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
