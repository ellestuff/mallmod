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
	end,

	-- ty to @kotonesdiary for helping with this

	---@param cutscene WorldCutscene
	---@param event Event
	enter_darkworld = function(cutscene, event)
		if not Game:hasPartyMember("chloe") then
			cutscene:text("* (It's locked. [wait:5]Maybe somebody around here has a key?)")
			return
		end

		cutscene:detachCamera()
		cutscene:detachFollowers()
		local ex,ey = 320,280
		local kris = cutscene:getCharacter("kris")
		local susie = cutscene:getCharacter("susie")
		local chloe = cutscene:getCharacter("chloe")
		kris:walkTo(ex + 40, ey + 30, .5)
		susie:walkTo(ex - 40, ey + 30, .5)
		chloe:walkTo(ex, ey, .5)
		cutscene:wait(.5)
		kris:setFacing("up")
		susie:setFacing("up")
		chloe:setFacing("up")
		--cutscene:wait(.5)
		
		cutscene:text("* Here it is. [wait:5]Are you sure about this you two?", "smile_closed", "chloe_lw")
		cutscene:text("* Who knows what could be in here...", "nervous", "chloe_lw")
		cutscene:text("* Of course we are.", "annoyed", "susie")
		cutscene:text("* We're NOT sitting around in a mall doing nothing for 8 hours straight.", "annoyed", "susie")
		cutscene:text("* Especially since you said there's a murderer wandering about.", "bangs_neutral", "susie")
		cutscene:text("* Well, [wait:5]there should be SOMETHING in here to wake you two up.", "side", "chloe_lw")
		
		cutscene:walkTo("chloe",320,260,1)
		
		cutscene:wait(1.4)
		Assets.playSound("noise")
		cutscene:shakeCharacter("chloe")
		cutscene:wait(1)
		
		cutscene:text("* Here goes nothing.", "smile_closed", "chloe_lw")
		
		local door = DarkDoor(258,142,124,98)
		door:setLayer(0.4)
		Game.world:addChild(door)

		Assets.playSound("locker")
		Game.world.music:play("creepydoor",0)
		Game.world.music:fade(1,2)
		
		susie:walkTo(susie.x,susie.y+12,0.2,"up",true)
		kris:walkTo(kris.x,kris.y+12,0.2,"up",true)
		chloe:walkTo(chloe.x,chloe.y+12,0.2,"up",true)
		cutscene:wait(1)
		cutscene:text("* Uhh...", "fear", "chloe_lw")
		chloe:walkTo(chloe.x,400,2.5,"up",true)
		cutscene:wait(1)
		susie:walkTo(susie.x-12,susie.y,0.2,"right",true)
		kris:walkTo(kris.x+12,kris.y,0.2,"left",true)
		cutscene:wait(0.7)
		susie:setFacing("down")
		kris:setFacing("down")
		
		cutscene:wait(0.7)
		Assets.playSound("bump")
		chloe:shake()
		cutscene:wait(1)
		
		cutscene:text("* What the hell is that?", "fear", "chloe_lw")
		local b = cutscene:walkTo("susie",320,260,1)
		cutscene:during(function()
			kris:faceTowards(susie)
			return not b()
		end)
		cutscene:wait(b)
		cutscene:wait(1)
		Game.world.music:stop()
		Assets.playSound("locker")
		door.lighting:remove()
		door:remove()
		
		cutscene:wait(1)
		susie:faceTowards(kris)
		kris:faceTowards(susie)
		cutscene:text("* Kris...", "concerned", "susie")
		cutscene:text("* Why is there a Dark World here?", "concerned", "susie")
		cutscene:text("* A what.", "surprised", "chloe_lw")
		cutscene:text("* No time to explain, [wait:5]just follow our lead.[react:Okay???,415,70,surprised,chloe_lw]", "exhausted_smile", "susie")
		kris:walkTo(ex + 40, ey, .5)
		susie:walkTo(ex - 40, ey, .5)
		chloe:walkTo(ex, ey + 30, .5)
		cutscene:wait(.5)
		
		local done = false
		local endData = nil
		local transition = DarkTransition(280, { movement_table = { .3, -.3, 0 } }) -- The movement table is very fickle... change it in increments of 0.5 if it doesnt look right
		transition.rx1, transition.ry1 = Game.world:localToScreenPos(129, 71)
		transition.rx2, transition.ry2 = Game.world:localToScreenPos(191, 120)
		transition.loading_callback = function()
			Game.world:loadMap("darkworld_start/start")
			cutscene:detachCamera()
			cutscene:detachFollowers()
			for _, party in ipairs(Game.party) do
				local char = Game.world:getCharacter(party.id)
				char.visible = false
			end
		end
		transition.end_callback = function(trans, data)
			done = true
			endData = data
		end
		transition:setLayer(WORLD_LAYERS["below_ui"]-1)
		for _, party in ipairs(Game.party) do
			local char = Game.world:getCharacter(party.id)
			char.visible = false
		end
		Game.world:addChild(transition)

		cutscene:wait(function() return transition.con == 33 and math.floor(transition.timer) >= 30 end)
		transition.character_data[3].x = 55
		transition.character_data[2].x = 100
		transition.character_data[1].x = 145

		cutscene:wait(function() return done end)
		Kristal.Console:log("Done")
		for _, character in ipairs(endData) do
			local char = Game.world:getPartyCharacterInParty(character.party)
			local kx, ky = character.sprite_1:localToScreenPos(character.sprite_1.width / 2, 0)
			char:setScreenPos(kx, transition.final_y)
			char.visible = true
			char:setFacing("down")
		end
		cutscene:text("* what huh what what huh what the huh the how where am i what the hell[next]","surprised","chloe")
		cutscene:wait(1)
		cutscene:text("* What?","fear","chloe")
		cutscene:text("[instant]* What? [stopinstant]The Hell?","fear","chloe")
		cutscene:text("[instant]* What? The Hell? [stopinstant]Is going on?","fear","chloe")
		cutscene:text("* Welcome to the Dark World.","sincere_smile","susie")
		cutscene:text("* How was the fall?","smile","susie")
		cutscene:text("* We just have to seal the Dark Fountain and we can leave.","closed_grin_fixed","susie")
		cutscene:text("* And go inside the Lab.","smile","susie")
		cutscene:text("* ...It'll be easier once Ralsei shows up though.[react:Who???,420,70,surprised,chloe]","smirk","susie")
		cutscene:alignFollowers("right")
		cutscene:attachFollowers()
		cutscene:attachCamera()
	end
}
