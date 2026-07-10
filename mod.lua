function Mod:init()
    Game.light = true
    print("Loaded " .. self.info.name .. "!")

	-- Add Charm functionality to enemies
	HookSystem.hook(EnemyBattler, "addMercy", function(orig, self, amount)
		orig(self, amount*(self.charmed and 1.5 or 1))
	end)

	Game:registerEvent("darknessSpotlight", function(data)return darknessSpotlight(data.x, data.y, data.properties, data.id) end)
	Game:registerEvent("floormirror", function(data) return floormirror(data.x, data.y, {data.width, data.height}, data.properties) end)
	Game:registerEvent("darkness", function(data) return darkness(data.properties) end)
	Game:registerEvent("DarkDoor", function(data) return DarkDoor(data.x, data.y, data.width, data.height) end)
	Game:registerEvent("DarkLighting", function(data) return DarkLighting() end)
end

function Mod:load(data, is_new_file, index)
	if is_new_file then
		local inv = Game.inventory:getDarkInventory()

		inv:addItem("darkburger")
		inv:addItem("darkburger")
		inv:addItem("darkburger")
		inv:addItem("darkburger")
	end
end

local backtrack_music_rooms = {
	spawn = true,
	southHall = true
}
--[[
function Mod:onMapMusic(map, music)
    if backtrack_music_rooms[map.id] and music == "alley_ambience" and Game:getFlag("backtrackingMusic") then
        return "chloe"
    end
end
]]
