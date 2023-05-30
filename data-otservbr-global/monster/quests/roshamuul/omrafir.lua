local mType = Game.createMonsterType("Omrafir")
local monster = {}

monster.description = "Omrafir"
monster.experience = 4000000
monster.outfit = {
	lookType = 12,
	lookHead = 78,
	lookBody = 3,
	lookLegs = 79,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1000000
monster.maxHealth = 1000000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 240
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25
}

monster.bosstiary = {
	bossRaceId = 1011,
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
	{text = "FIRST I'LL OBLITERATE YOU THEN I BURN THIS PRISON DOWN!!", yell = false},
	{text = "I'M TOO HOT FOR YOU TO HANDLE!", yell = true},
	{text = "FREEDOM FOR PRINCESS", yell = true},
	{text = "THE POWER OF HIS INTERNAL FIRE RENEWS OMRAFIR!", yell = true},
	{text = "OMRAFIR INHALES DEEPLY!", yell = true},
	{text = "OMRAFIR BREATHES INFERNAL FIRE", yell = true},
	{text = "I WILL RULE WHEN THE NEW ORDER IS ESTABLISHED!", yell = true}
}

monster.loot = {
	{id = 16119, chance = 37500, maxCount = 50}, -- blue crystal shard
	{id = 20062, chance = 62500, maxCount = 20}, -- cluster of solace
	{id = 16125, chance = 43750, maxCount = 30}, -- cyan crystal fragment
	{id = 5954, chance = 100000}, -- demon horn
	{id = 6499, chance = 812500, maxCount = 40}, -- demonic essence
	{id = 20278, chance = 6250}, -- demonic tapestry
	{id = 20063, chance = 81250, maxCount = 2}, -- dream matter
	{id = 20276, chance = 3250, unique = true}, -- dream warden mask
	{id = 20279, chance = 2500}, -- eye pod
	{id = 281, chance = 43750}, -- giant shimmering pearl (green)
	{id = 282, chance = 43750}, -- giant shimmering pearl (brown)
	{id = 3031, chance = 18750, maxCount = 100}, -- gold coin
	{id = 238, chance = 6250, maxCount = 80}, -- great mana potion
	{id = 7642, chance = 56250, maxCount = 80}, -- great spirit potion
	{id = 16127, chance = 37500, maxCount = 30}, -- green crystal fragment
	{id = 16121, chance = 18750, maxCount = 50}, -- green crystal shard
	{id = 3038, chance = 18750}, -- green gem
	{id = 820, chance = 12500}, -- lightning boots
	{id = 825, chance = 18750}, -- lightning robe
	{id = 20282, chance = 12500}, -- nightmare hook
	{id = 20274, chance = 100000, unique = true}, -- nightmare horn
	{id = 3035, chance = 93750, maxCount = 5000}, -- platinum coin
	{id = 20277, chance = 6250}, -- psychedelic tapestry
	{id = 16126, chance = 6250, maxCount = 30}, -- red crystal fragment
	{id = 3098, chance = 6250}, -- ring of healing
	{id = 5741, chance = 6250}, -- skull helmet
	{id = 3554, chance = 6250}, -- steel boots
	{id = 7643, chance = 31250, maxCount = 80}, -- ultimate health potion
	{id = 20264, chance = 81250, maxCount = 30}, -- unrealized dream
	{id = 16120, chance = 18750, maxCount = 50}, -- violet crystal shard
	{id = 3043, chance = 10000, maxCount = 1000} -- crystal coin
}

monster.attacks = {
	{name ="melee", interval = 600, chance = 100, skill = 392, attack = 500},
	{name ="omrafir wave", interval = 1000, chance = 17, minDamage = -1500, maxDamage = -4000, target = false},
	{name ="omrafir beam", interval = 1000, chance = 15, minDamage = -1700, maxDamage = -20000, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -13000, length = 10, spread = 3, effect = CONST_ME_FIREATTACK, target = false},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -1400, radius = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 1000, chance = 19, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -1300, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true},
	{name ="firefield", interval = 1000, chance = 12, radius = 6, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true}
}

monster.defenses = {
	defense = 165,
	armor = 155,
	{name ="combat", interval = 200, chance = 22, type = COMBAT_HEALING, minDamage = 440, maxDamage = 1800, target = false},
	{name ="omrafir summon", interval = 500, chance = 50, target = false},
	{name ="omrafir healing 2", interval = 1000, chance = 20, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
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
