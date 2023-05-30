local mType = Game.createMonsterType("Ex do Renan")
local monster = {}

monster.description = "Barbara"
monster.experience = 25500000
monster.outfit = {
	lookType = 137,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 39,
	lookFeet = 76,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 2000000
monster.maxHealth = 2000000
monster.race = "blood"
monster.corpse = 18261
monster.speed = 88
monster.manaCost = 0

monster.changeTarget = {
	interval = 1000,
	chance = 100
}

--monster.bosstiary = {
--	bossRaceId = 428,
--	bossRace = RARITY_NEMESIS
--}

monster.strategiesTarget = {
	nearest = 6,
	health = 2,
	damage = 2,
	random = 90,
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
	runHealth = 30000,
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
}

monster.loot = {
	{id = 3114, chance = 100000, maxCount = 200}, -- skull
	{name = "crystal coin", chance = 24000, maxCount = 23456},
	{name = "wedding ring", chance = 10000},
	{name = "red rose", chance = 33000},
	{name = "heart backpack", chance = 199}
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, minDamage = -700, maxDamage = -750},
	{name ="drunk", interval = 200, chance = 10, length = 5, spread = 5, effect = CONST_ME_SOUND_RED, target = false, duration = 5000},
	{name ="combat", interval = 1000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -3000, range = 9, shootEffect = CONST_ANI_THROWINGKNIFE, target = true},
	{name ="combat", interval = 2500, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -4000, range = 9, shootEffect = CONST_ANI_THROWINGKNIFE, target = true},
	{name ="combat", interval = 3500, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -5000, range = 9, shootEffect = CONST_ANI_THROWINGKNIFE, target = true},
	{name ="combat", interval = 4500, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -6000, range = 9, shootEffect = CONST_ANI_THROWINGKNIFE, target = true}			
}

monster.defenses = {
	defense = 15,
	armor = 0,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 7000, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 200, chance = 15, speedChange = 1320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -6},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 7},
	{type = COMBAT_DEATHDAMAGE , percent = -7}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
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
