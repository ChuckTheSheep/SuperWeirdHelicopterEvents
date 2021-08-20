---@param heli eHelicopter
---@param location IsoGridSquare
function eHelicopter_dropCrewOff(heli, location)
	local crew = heli:spawnCrew(0, 0)
	heli.addedFunctionsToEvents.OnHover = false
end
