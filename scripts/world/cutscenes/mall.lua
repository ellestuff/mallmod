local cafe_items = { "cafe_smoothie", "cafe_cupcake" }

return {
	-- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
	-- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

	---@param cutscene WorldCutscene
	becca_shop = function(cutscene)
		Game:enterShop("becca_shop")
	end,

	---@param cutscene WorldCutscene
	becca_drop = function(cutscene)
		cutscene:text("* Now now, [wait:5]no wasting perfectly good food~", "smug", "becca")
        cutscene:text("* Do you expect us to eat all of this?", "annoyed", "susie")
        cutscene:text("* Duh~ [wait:5]You don't go to a café to NOT eat food, [wait:5]do you?", "smug", "becca")
        cutscene:text("* So we can't even take it with us?", "angry", "susie")
        cutscene:text("* Someone didn't read the rules~", "smug", "becca")
	end,

	---@param cutscene WorldCutscene
	becca_eat = function(cutscene, foodname)
		if not Game:getFlag("becca_eaten") then
			Game.party[1].lw_health = 20
			cutscene:text("* Hey Kris, [wait:5]you're not gonna keep all that to yourself, [wait:5]are you?", "smile", "susie")
			cutscene:text("* (You split the "..foodname.." with Susie.)")
			
			

			for i = 1, 3, 1 do
				Assets.playSound("swallow")
				cutscene:wait(1)
			end
			
			cutscene:text("* I'm.[wait:5].[wait:5]. [wait:5]not full?", "surprise", "susie")
			cutscene:text("* The Mall's a weird place. [wait:5]You get used to it eventually.", "happy", "becca")
			
			if Game:hasPartyMember("chloe") then cutscene:text("* Can confirm, [wait:5]hehe.", "smile_closed", "chloe") end
			
			Game:setFlag("becca_eaten", true)
		else
			cutscene:text("* (You split the "..foodname.." with Susie.)")
			for i = 1, 3, 1 do
				Assets.playSound("swallow")
				cutscene:wait(1)
			end
		end
	end,

	---@param cutscene WorldCutscene
	becca_stop = function(cutscene)
		local do_stop = false
		for i, v in ipairs(Game.inventory:getStorage("items")) do
			do_stop = v.becca_shop or do_stop
		end

		if do_stop then
			if not Game:getFlag("becca_stop") then
				cutscene:text("* Now now, [wait:5]no taking food out the Café.", "smug", "becca")
				cutscene:text("* And why's that, [wait:5]huh?", "annoyed", "susie")
				cutscene:text("* Because of Café rules, [wait:5]obviously~", "smug", "becca")
				cutscene:text("* And why's that in the rules?", "nervous", "susie")
				cutscene:text("* ", "annoyed", "becca")
				cutscene:text("* Exactly, now-", "smile", "susie")

				local sx,sy = cutscene:getCharacter("susie"):getPosition()
				cutscene:walkTo("susie",320,480,1)
				
				cutscene:wait(1.4)
				Assets.playSound("noise")
				cutscene:shakeCharacter("susie")
				
				cutscene:wait(0.2)
				
				cutscene:text("* I-", "unsure", "susie")
				cutscene:setAnimation("susie", "angry_down")
				cutscene:text("* It's locked!", "teeth_b", "susie")
				cutscene:setAnimation("susie", "down")
				
				for i = 1, 5, 1 do
					Assets.playSound("noise")
					cutscene:shakeCharacter("susie")
					cutscene:wait(0.2)
				end
				
				cutscene:text("* How did you even-", "nervous", "susie")
				cutscene:text("* Just eat your food and you can leave~", "smug", "becca")
				cutscene:walkTo("susie",sx,sy,0.6)
				cutscene:wait(0.6)
				
				Game:setFlag("becca_stop", true)
				
				local kris = cutscene:getCharacter("kris")
				kris:walkTo(kris.x,450,.1)
			else
				cutscene:text("* Just eat your food and you can leave~", "smug", "becca")
				local kris = cutscene:getCharacter("kris")
				kris:move(0,-10)
			end
		end
	end,

	---@param cutscene WorldCutscene
	lab_note = function(cutscene)
		cutscene:text("* (It's a hand-written note.)\n[wait:5]* (Read it?)")
		local c = cutscene:choicer({"Yes", "No"})
		if c == 1 then
			cutscene:text("* I'll be completely honest, [wait:5]I don't know anything about science.")
			cutscene:text("* I majored in Computer Science. [wait:5]I'm just doing things, [wait:5]hoping they work, [wait:5]and they just do!")
			cutscene:text("* These vials make it look like my work is more scientific than it actually is though LOL.")
			cutscene:text("* The Mall works in strange ways, [wait:5]and I can't wait to study it further.")
			cutscene:text("* - Sarah.")

			if Game:hasPartyMember("chloe") then
				cutscene:text("* ...", "sad", "chloe")
			end
		else
			cutscene:text("* (You decide to respect the note's privacy.)")
		end
	end,

	---@param cutscene WorldCutscene
	lab_moss = function(cutscene)
		if not Game:getFlag("moss_eaten") then
			cutscene:text("* Heck yeah, [wait:5]there's moss here too!", "smile", "susie")
			local c = cutscene:choicer({"Perpetuate\nthe cycle", "Do not"})
			if c == 2 then
				cutscene:text("* Wrong answer, [wait:5]dumbass.", "closed_grin_fixed", "susie")
			end
			
			cutscene:text("* (You and Susie eat the moss.)")
			cutscene:text("* (The cycle has been perpetuated.)"..(Game:hasPartyMember("chloe") and "[react:What are you\ntwo doing?, 380,60,surprised,chloe_lw]" or ""))
		end
		Game:setFlag("moss_eaten", true)
	end
}
