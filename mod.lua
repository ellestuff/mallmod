function Mod:init()
    Game.light = true
    print("Loaded " .. self.info.name .. "!")

	-- Add Charm functionality to enemies
	HookSystem.hook(EnemyBattler, "addMercy", function(orig, self, amount)
		orig(self, amount*(self.charmed and 1.5 or 1))
	end)
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
