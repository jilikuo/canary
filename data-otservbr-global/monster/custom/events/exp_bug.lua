local mType = Game.createMonsterType("Exp Bug")
local monster = {}

monster.description = "an exp bug"
monster.experience = 105689321
monster.outfit = {
	lookType = 45,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 45
--monster.Bestiary = {
--	class = "Vermin",
--	race = BESTY_RACE_VERMIN,
--	toKill = 250,
--	FirstUnlock = 10,
--	SecondUnlock = 100,
--	CharmsPoints = 5,
--	Stars = 1,
--	Occurrence = 0,
--	Locations = "Rare sight."
--	}

monster.health = 2000000
monster.maxHealth = 2000000
monster.race = "venom"
monster.corpse = 5990
monster.speed = 10300
monster.manaCost = 250

monster.changeTarget = {
	interval = 400,
	chance = 100
}

monster.strategiesTarget = {
	nearest = 1,
	random = 99
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	rewardBoss = true,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 1980000,
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
	{name = "gold coin", chance = 51170, maxCount = 60},
	{name = "crystal coin", chance = 40000, maxCount = 100},
	{name = "cherry", chance = 2590, maxCount = 3000}
}

monster.attacks = {
	{name ="melee", interval = 1000, chance = 100, minDamage = 0, maxDamage = -5000}
}

monster.defenses = {
	defense = 5,
	armor = 5
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = -50},
	{type = COMBAT_MANADRAIN, percent = -10},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = -25}
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
