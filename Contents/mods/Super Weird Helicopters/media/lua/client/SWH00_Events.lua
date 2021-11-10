---@param heli eHelicopter
---@param location IsoGridSquare
function eHelicopter_dropCrewOff(heli, location)
	heli:spawnCrew()
	heli.addedFunctionsToEvents.OnHover = false
end


---@param crew table
---@param location IsoGridSquare
function eHelicopter_crewSeek(crew, location)

	if not crew then
		return
	end

	local choice
	for character,value in pairs(EHEIsoPlayers) do
		if (not choice) or (choice and character and (location:DistTo(choice) < location:DistTo(character)) ) then
			choice = character
		end
	end

	if choice then

		for i=0, crew:size()-1 do
			---@type IsoZombie
			local zombie = crew:get(i)
			if zombie then
				zombie:spotted(choice, true)
			end
		end
	end
end