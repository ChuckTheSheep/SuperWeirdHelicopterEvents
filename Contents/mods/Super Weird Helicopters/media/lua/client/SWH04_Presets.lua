---Event Scheduler List
--[[
eHeliEvents_init["preset"] = {["ID"]=nil, ["heliDay"]=configStartDay, ["heliStart"]=nil}
--]]
function eHeliEventsinit()
	eHeliEvents_init = eHeliEvents_init or {}
	eHeliEvents_init["Spiffocopter"] = {["ID"]=nil, ["heliDay"]=configStartDay, ["heliStart"]=nil}
	eHeliEvents_init["UFO"] = {["ID"]=nil, ["heliDay"]=configStartDay, ["heliStart"]=nil}
	eHeliEvents_init["IRS"] = {["ID"]=nil, ["heliDay"]=configStartDay, ["heliStart"]=nil}
	eHeliEvents_init["TISCreamery"] = {["ID"]=nil, ["heliDay"]=configStartDay, ["heliStart"]=nil}
end
Events.OnGameBoot.Add(eHeliEventsinit)


---Preset list, only include variables being changed.
---variables can be found in Main Variables file, at the top, fields = variables
eHelicopter_PRESETS = eHelicopter_PRESETS or {}

--[[
eHelicopter_PRESETS["id_name"] = {
		variable = {values}
	}
]]


eHelicopter_PRESETS["Spiffocopter"] = {
	crashType = {"Bell206SpiffoFuselage"},
	hoverOnTargetDuration = {2000,2250},
	scrapAndParts = {["vehicleSection"]="Bell206SpiffoTail"},
	crew = {"SpiffoBoss",100,0,
			"SpiffoBoss",20,0,
			"SpiffoBoss",5,0,},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	dropPackages = {"SpiffoBurger"},
	announcerVoice = "Spiffo",

}

eHelicopter_PRESETS["UFO"] = {
	crashType = {"UFO"},
	hoverOnTargetDuration = {2000,2250},
	crew = {"AlienTourist",100,0,
			"AlienTourist",75,0,
			"AlienTourist",30,0,
			"AlienTourist",15,0,
			"AlienTourist",5,0, },
	speed = 1.3,
	topSpeedFactor = 2,
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	scrapAndParts = false,
	eventSoundEffects = {["flightSound"] = "AlientUFOFlight"},
}

eHelicopter_PRESETS["IRS"] = {
	crashType = {"Bell206IRSFuselage"},
	hoverOnTargetDuration = {2000,2250},
	scrapAndParts = {["vehicleSection"]="Bell206IRSTail"},
	crew = {"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,
			"TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0, "TaxMan",100,0,},
	attackDelay = 1000,
	attackSpread = 4,
	speed = 0.06,
	attackHitChance = 65,
	attackDamage = 35,
	hostilePreference = "IsoPlayer",
	dropItems = {["SWH.TenFortyForm"]=400},
	eventSoundEffects = {
		["attackSingle"] = "eHeli_bolt_action_fire_single",
		["attackLooped"] = "eHeli_bolt_action_fire_single",
		},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	announcerVoice = "IRS",
}

eHelicopter_PRESETS["TISCreamery"] = {
	crashType = {"TISIceCreamTruck"},
	hoverOnTargetDuration = {2000,2250},
	crew = {"RobertJohnson",100,0,
			"RobertJohnson",100,0,
			"RobertJohnson",75,0,
			"RobertJohnson",50,0,
			"RobertJohnson",25,0,
			"RobertJohnson",25,0, },
	eventSoundEffects = {["flightSound"] = "IceCreamFlyBy"},
	addedFunctionsToEvents = {["OnHover"] = eHelicopter_dropCrewOff,},
	scrapAndParts = false,
}
