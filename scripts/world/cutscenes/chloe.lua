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
		
		cutscene:text("[speed:0.5]* It started out as a gift Sarah had been working on in secret.")
		cutscene:text("[speed:0.5]* A tail.")
		cutscene:text("[speed:0.5]* A tail that would be able to move on its own. [wait:5]To think on its own.")
		cutscene:text("[speed:0.5]* I became friends with my new tail, [wait:5]I even gave it a name.")
		cutscene:text("[speed:0.5]* \"Furry\".")
		cutscene:text("[speed:0.5]* Furry became bigger and smarter over time, [wait:5]making it clear to me that...")
		cutscene:text("[speed:0.5]* She was her own person, [wait:5]with her own thoughts and feelings.")
		cutscene:text("[speed:0.5]* She was only supposed to be temporary though, [wait:5]Sarah said.")
		cutscene:text("[speed:0.5]* After a while, [wait:5]Sarah said she would put the tail to rest so I could control it myself.")
		cutscene:text("[speed:0.5]* Furry was terrified, [wait:5]so she took matters into her own hands...")

		Assets.playSound("ominous_stab",2)
		cutscene:wait(2)
		
		cutscene:text("[speed:0.5]* My body was no longer my own, [wait:5]she was in full control.")
		cutscene:text("[speed:0.5]* She pretended to be me, [wait:5]and nobody could tell the difference.")
		cutscene:text("[speed:0.5]* Eventually, [wait:5]something happened...")
		cutscene:text("[speed:0.5]* Something went wrong.")
		cutscene:text("[speed:0.5]* She crossed a line.")
		
		Assets.playSound("bite",2)
		cutscene:text("[speed:0.5]* She had taken the life of an innocent person.")
		cutscene:text("[speed:0.5]* The worst part?")
		cutscene:text("[speed:0.5]* She loved it.")
		cutscene:text("[speed:0.5]* She loved it so much that she went on to do it again.")
		cutscene:text("[speed:0.5]* [shake:.5][sound:bite]Again and [wait:5][sound:bite]again and [wait:5][sound:bite]again and [wait:5][sound:bite]again and [wait:5][sound:bite]again and [wait:5][sound:bite]again and [wait:5][sound:bite]again and [wait:5][sound:bite]again and [wait:5][sound:bite]again...")
		
		Game.world.music:fade(0,2)
		cutscene:wait(4)
		
		cutscene:text("[speed:0.5]* Sarah eventually found out.")
		cutscene:text("[speed:0.5]* She was horrified.")
		cutscene:text("[speed:0.5]* Furry was separated from my body and presumed dead...")
		
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
