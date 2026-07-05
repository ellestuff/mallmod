return {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    elle = function(cutscene, event)
        cutscene:setSpeaker("elle")

        local elle = cutscene:getCharacter("elle")
        local dummy = Game:getFlag("encounter#dummy:done")
        local c = Game:getFlag("elle_talked",0)

        if Game:getFlag("elle_lw") then
            cutscene:text("* (Kris, we're done talking to her.)", "annoyed", "susie")
            return
        end

        if c == 1 then
            if dummy then
                cutscene:text("* I told you so.")
                Game:setFlag("elle_talked", 2)
            else
                cutscene:text("* What?")
                cutscene:text("* What?", "smile", "chloe")
            end
        elseif c == 2 then
            cutscene:text("* Hey, wait a second.", "surprise", "susie")
            cutscene:text("* How come you're in your Dark World outfit but we aren't?", "surprise", "susie")

            cutscene:wait(1)
            cutscene:text("* [speed:0.25]...")

            Game:setFlag("elle_lw",true)
            cutscene:getCharacter("elle"):setSprite("elle_lw")

            cutscene:text("* I don't know what you're\ntalking about.")
        else
            cutscene:text("* What're you looking at?")
            cutscene:text("* This is just a test room.\n[wait:5]* I'll come up with something better later, [wait:5]trust.")
            cutscene:text("* ...That said, [wait:5]I wouldn't approach that dummy if I were you.")

            if dummy then
                cutscene:text("* Why? [wait:5]Because of that thing where we get stuck facing south?", "smile", "susie")
                cutscene:text("* You know about that already?")
                cutscene:text("* Yeah, we already beat the damn thing.\n[wait:5]* It looked lame as hell.", "teeth_b", "susie")
                cutscene:text("* Haha yea, I bet it did.")
            else
                cutscene:text("* Why? [wait:5]We don't need magic\nto kick its ass.[react:Why would you want to\nattack it\\, anyways?, 340,60,surprised,chloe_lw]","smile","susie")
                cutscene:text("* Oh, [wait:5]nono, [wait:5]you just don't have battle sprites when like this.")
                cutscene:text("* You'd just be stuck facing\nsouth the whole time.[wait:10]\n* Like a chump.")
                cutscene:text("* A chump? [wait:10]\n* What kinda insult is that?", "what_smile", "chloe")
                cutscene:text("* [speed:0.25]...")
                cutscene:text("* Shut up[next]")
            end

            Game:setFlag("elle_talked", dummy and 2 or 1)
        end

    end
}
