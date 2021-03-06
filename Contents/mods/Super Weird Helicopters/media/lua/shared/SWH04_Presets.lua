require "ExpandedHelicopter02a_Presets"

---Preset list, only include variables being changed.
---variables can be found in Main Variables file, at the top, fields = variables
eHelicopter_PRESETS = eHelicopter_PRESETS or {}
--[[
eHelicopter_PRESETS["id_name"] = {
		variable = {values}
	}
]]


eHelicopter_PRESETS["Spiffocopter"] = {
	presetProgression = {
		["Spiffocopter_inviteOnly"] = 0,
		["Spiffocopter_partyTime"] = 0.05,
	},
	crashType = {"Bell206SpiffoFuselage"},
	hoverOnTargetDuration = {1000,1225},
	scrapItems = {"EHE.Bell206HalfSkirt", "EHE.Bell206RotorBlade", 2, "EHE.Bell206TailBlade", 2, "Base.ScrapMetal", 10},
	scrapVehicles = {"Bell206SpiffoTail"},
	eventSoundEffects = {["flightSound"] = "eHelicopter"},
	dropPackages = {"SpiffoBurger"},
	announcerVoice = "Spiffo",
	dropItems = {["SWH.SpiffoInvite"]=250},
	crew = {"SpiffoBoss",100,0,
			"SpiffoBoss",10,0,
			"SpiffoBoss",1,0,},
	forScheduling = true,
	eventSpawnWeight = 1,
	eventStartDayFactor = 0.044,
	eventCutOffDayFactor = 1,
}

eHelicopter_PRESETS["Spiffocopter_inviteOnly"] = {
	inherit = {"Spiffocopter"},
}

eHelicopter_PRESETS["Spiffocopter_partyTime"] = {
	inherit = {"Spiffocopter"},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
}



eHelicopter_PRESETS["UFO"] = {
	presetRandomSelection = {"UFOTourists",4,"UFORednecks",1,"UFOFratBoys",1,},
	crashType = {"UFO"},
	hoverOnTargetDuration = {1000,1225},
	speed = 10,
	topSpeedFactor = 2,
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	scrapItems = false,
	scrapVehicles = false,
	addedCrashChance = 33,
	flightHours = {20,27},
	announcerVoice = "Aliens",
	eventMarkerIcon = "media/ui/markerUFO.png",
	eventSoundEffects = {["flightSound"] = "AlienUFOFlight"},
	forScheduling = true,
	eventSpawnWeight = 2,
	eventStartDayFactor = 0.044,
	eventCutOffDayFactor = 1,
}

eHelicopter_PRESETS["UFOTourists"] = {
	inherit = {"UFO"},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"AlienTourist",100,0,
			"AlienTourist",75,0,
			"AlienTourist",30,0,
			"AlienTourist",15,0,
			"AlienTourist",5,0, },
}

eHelicopter_PRESETS["UFORednecks"] = {
	inherit = {"UFO"},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crashType = {"UFORedneck"},
	crew = {"AlienRedneck",100,0,
			"AlienRedneck",75,0,
			"AlienRedneck",30,0,
			"AlienRedneck",15,0,
			"AlienRedneck",5,0, },
	eventSoundEffects = {
		["flightSound"] = "RedNeckAlienUFOFlight",
	},
}

eHelicopter_PRESETS["UFOFratBoys"] = {
	inherit = {"UFO"},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"AlienBeefo",100,0,
			"AlienBeefo",75,0,
			"AlienBeefo",30,0,
			"AlienBeefo",15,0,
			"AlienBeefo",5,0, },
	eventSoundEffects = {
		["flightSound"] = "AlienUFOFlight",
		["additionalFlightSound"] = "assBlastUSA"
	},
	announcerVoice = "FratAliens",
}



eHelicopter_PRESETS["IRS"] = {
	presetProgression = {
		["IRS_Wave1"] = 0,
		["IRS_Wave2"] = 0.2,
		["IRS_Wave3"] = 0.5,
	},
	hoverOnTargetDuration = {1000,1225},
	crashType = {"Bell206IRSFuselage"},
	scrapItems = {"EHE.Bell206HalfSkirt", "EHE.Bell206RotorBlade", 2, "EHE.Bell206TailBlade", 2, "Base.ScrapMetal", 10},
	scrapVehicles = {"Bell206IRSTail"},
	attackDelay = 1000,
	attackSpread = 4,
	speed = 0.9,
	attackHitChance = 65,
	attackDamage = 12,
	hostilePreference = "IsoPlayer",
	dropItems = {["SWH.TenFortyForm"]=400},
	eventSoundEffects = {
		["attackSingle"] = "eHeli_bolt_action_fire_single",
		["attackLooped"] = "eHeli_bolt_action_fire_single",
		["flightSound"] = "eHelicopter",
	},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	announcerVoice = "IRS",
	forScheduling = true,
	eventSpawnWeight = 4,
	eventStartDayFactor = 0.044,
	eventCutOffDayFactor = 1,
}

eHelicopter_PRESETS["IRS_Wave1"] = {
	inherit = {"IRS"},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,},
}

eHelicopter_PRESETS["IRS_Wave2"] = {
	inherit = {"IRS"},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,},
}

eHelicopter_PRESETS["IRS_Wave3"] = {
	inherit = {"IRS"},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,
			"TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0, "TaxMan",50,0,},
}



eHelicopter_PRESETS["TISCreamery"] = {
	crashType = {"TISIceCreamTruck"},
	hoverOnTargetDuration = {1000,1125},
	crew = {"RobertJohnson",100,0,
			"RobertJohnson",100,0,
			"RobertJohnson",75,0,
			"RobertJohnson",50,0,
			"RobertJohnson",25,0,
			"RobertJohnson",25,0, },
	eventSoundEffects = {["flightSound"] = "IceCreamFlyBy",},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	scrapAndParts = false,
	forScheduling = true,
	eventSpawnWeight = 2,
	eventStartDayFactor = 0.044,
	eventCutOffDayFactor = 1,
}

eHelicopter_PRESETS.samaritan_drop.dropPackages = {"MCSupplyDrop"}


eHelicopter_PRESETS["helikopter (copyrighted)"] = {
	inherit = {"raider_heli_harasser"},
	eventSoundEffects = {
		["flightSound"] = "eMiliHeli",
		["attackSingle"] = "eHeliM16GunfireSingle",
		["attackLooped"] = "eHeliM16GunfireSingle",
		["additionalFlightSound"] = "Helikopter",}
}


eHelicopter_PRESETS["sandyclaws"] = {
	speed = 2,
	crashType = {"UH1HSantaFuselage"},
	scrapItems = {"EHE.UH1HHalfSkirt", "EHE.Bell206RotorBlade", 2, "EHE.Bell206TailBlade", 2, "Base.ScrapMetal", 10,},
	scrapVehicles = {"UH1HSantaTail"},
	crew = {"AlienSanta"},
	hoverOnTargetDuration = {1250,1500},
	attackDelay = 1700,
	attackSpread = 4,
	attackHitChance = 55,
	attackDamage = 10,
	hostilePreference = "IsoPlayer",
	eventSoundEffects = {
		["flightSound"] = "eMiliHeli",
		["attackSingle"] = "eHeliM16GunfireSingle",
		["attackLooped"] = "eHeliM16GunfireSingle",
		["additionalFlightSound"] = "JangleBalls",
	},
	addedFunctionsToEvents = {["OnFlyaway"] = eHelicopter_dropCrewOff,["OnSpawnCrew"] = eHelicopter_crewSeek,},
	forScheduling = true,
	eventCutOffDayFactor = 1,
	eventSpawnWeight = 6,
	eventSpecialDates = { systemDates = {{12}}, inGameDates = {{12,20}, {12,25}}}
}