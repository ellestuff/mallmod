return {
	---@param cutscene WorldCutscene
	furry_flashback = function(cutscene, event)
		cutscene:fadeOut(2)
		Game.world.music:fade(0,2)
		cutscene:wait(2)
		Game.world.music:play("ch5_weird_monologue_deep")
		Game.world.music:fade(1,2)
		cutscene:wait(2)
		cutscene:setSpeaker("chloe")

		cutscene:text("[speed:0.5]* It all started with a birthday gift.")
		cutscene:text("[speed:0.5]* Sarah had been working on it in secret.")

		cutscene:text("[speed:0.5]* A tail that would be able to move on its own. [wait:5]To think on its own.")
		cutscene:text("[speed:0.5]* Sarah said it was an accident, [wait:5]and that it wasn't supposed to be able to think.")
		cutscene:text("[speed:0.5]* I became friends with my new tail anyways, [wait:5]even giving it a name.")
		cutscene:text("[speed:0.5]* \"Furry\".")
		cutscene:text("[speed:0.5]* Furry became bigger and smarter over time, [wait:5]making it clear to me that...")
		cutscene:text("[speed:0.5]* She was her own person, [wait:5]with her own thoughts, [wait:5]feelings, [wait:5]and dreams.")
		cutscene:text("[speed:0.5]* She was always planned to be removed, [wait:5]Sarah said.")
		cutscene:text("[speed:0.5]* Replaced with a tail I could learn to control myself.")
		cutscene:text("[speed:0.5]* I pleaded with her, but she insisted...")
		cutscene:text("[speed:0.5]* Furry was terrified, [wait:5]so she took matters into her own hands...")

		Assets.playSound("ominous_stab",2)
		cutscene:wait(2)
		
		cutscene:text("[speed:0.5]* My body was no longer my own.")
		cutscene:text("[speed:0.5]* She took my place, [wait:5]my identity...")
		cutscene:text("[speed:0.5]* Eventually, [wait:5]something terrible happened...")
		cutscene:text("[speed:0.5]* She crossed a line.")
		
		cutscene:text("[speed:0.5]* She had taken the life of an innocent person.")
		Assets.playSound("bite",2)
		cutscene:wait(1)
		cutscene:text("[speed:0.5]* The worst part?")
		cutscene:text("[speed:0.5]* She loved it.")
		cutscene:text("[speed:0.5]* It was exhilarating for her, she wanted to do it [shake:1]again[shake:0].")
		cutscene:text("[speed:0.5]* So she did.")
		cutscene:text("[speed:0.5]* [shake:1][sound:bite]Again [wait:5]and [sound:bite]again [wait:5]and [sound:bite]again [wait:5]and [sound:bite]again [wait:5]and [sound:bite]again [wait:5]and [sound:bite]again [wait:5]and [sound:bite]again [wait:5]and [sound:bite]again [wait:5]and [sound:bite]again...")
		
		Game.world.music:fade(0,2)
		cutscene:wait(4)
		
		cutscene:text("[speed:0.5]* Sarah eventually found out.")
		cutscene:text("[speed:0.5]* She was horrified. [wait:5]Of course she was.")
		cutscene:text("[speed:0.5]* She separated Furry from my body and she was presumed dead...")
		cutscene:text("[speed:0.5]* ...")
		cutscene:text("[speed:0.5]* Oh Sarah...")
		
		Game.world.music:play("alley_ambience")
		Game.world.music:fade(1,2)
		cutscene:fadeIn(2)
		cutscene:wait(3)
		
		cutscene:text("* What happened next?", "angry_unsure", "susie")
		cutscene:text("* It's a long story. [wait:5]All you need to know is...")
		cutscene:text("* That tail is Cheshire. [wait:5]She's too powerful to defeat.")
		cutscene:text("* I don't care what things you've gone up against in the past.")
		cutscene:text("* You kids wouldn't stand a chance against her.")
		cutscene:text("* Relax, [wait:5]we're more powerful in The Dark World.", "closed_grin_fixed", "susie")
		cutscene:text("* So is she! [wait:5]Look around you and what she's done to this place!")
		cutscene:text("* That's why...")

		Game.world.music:stop()
		cutscene:text("* I can't let you any further.")
		cutscene:startEncounter("flasque") -- Replace with Chloe fight eventually.
	end
}
