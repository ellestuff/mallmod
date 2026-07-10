return {
	-- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
	-- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

	---@param cutscene WorldCutscene
	bench = function(cutscene, event)
		if event.interact_count > 1 then
			cutscene:text("* (A bench, [wait:5]for pressing.)")
		else
			cutscene:text("* (A standard bench.)")
			cutscene:text("* (Doesn't look comfortable to\nsit on, [wait:5]let alone sleep on.)")
		end
	end,

	plant = function(cutscene, event)
		cutscene:text("* (A potted plant.)")
	end,
	
	fountain = function(cutscene, event)
		if event.interact_count > 1 and cutscene:getCharacter("susie") then
			Assets.playSound("swallow")
		else
			if cutscene:getCharacter("susie") then
				cutscene:text("* Sweet, [wait:.5]free water!", "surprise_smile", "susie")
				
				for i = 1, 3, 1 do
					Assets.playSound("swallow")
					cutscene:wait(.5)
				end
				cutscene:text("* Kris, [wait:5]you want some?", "smile", "susie")
				
				local c = cutscene:choicer({"Yes", "No"})
				if c == 1 then
					Assets.playSound("swallow")
					cutscene:wait(.5)
					cutscene:text("* Nice.", "small_smile", "susie")
				else
					cutscene:text("* More for me.", "smile", "susie")
					
					for i = 1, 3, 1 do
						Assets.playSound("swallow")
						cutscene:wait(.5)
					end
				end
				Game:setFlag("waterfountain", true)
			else
				cutscene:text("* (A water fountain, [wait:5]not to be confused with a Dark Fountain.)")
			end
		end
	end
}
