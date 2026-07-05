local actor, super = Class(Actor, "flasque")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Flasque"

    -- Width and height for this actor, used to determine its center
    self.width = 43
    self.height = 37

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = { -1, 25, 47, 14 }

    -- Path to this actor's sprites (defaults to "")
    self.path = "enemies/flasque"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "idle"

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    -- Table of talk sprites and their talk speeds (default 0.25)
    self.talk_sprites = {}

    -- Table of sprite animations
    self.animations = {
        -- Looping animation with 0.25 seconds between each frame
        -- (even though there's only 1 idle frame)
        ["idle"] = { "idle", 0.125, true },
        ["hurt"] = { "hurt", 0.125, true },
        ["meow"] = { "meow", 2/30, false },
        ["spared"] = { "mercy", 2/30, false },
    }

	self.flasqueColour = {0xff,0x53,0xa9}
	self.flasqueFill = 0.5
	self.flasqueTimer = 0

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {
        -- Since the width and height is the idle sprite size, the offset is 0,0
        ["hurt"] = { 0, 16 },
    }
end

local flowRate = 120

function actor:preSpriteDraw(sprite)
	-- Calculate colour from flasque RGB fill counts
	local c = math.max(self.flasqueColour[1],self.flasqueColour[2],self.flasqueColour[3])
	c = {self.flasqueColour[1]/c,self.flasqueColour[2]/c,self.flasqueColour[3]/c}

	Draw.pushShader("flasque", {
		flasqueColour = c,
		flasqueFill = 1-self.flasqueFill,
		flasqueTimer = self.flasqueTimer/flowRate*math.pi*2
	})
	
	self.flasqueTimer = (self.flasqueTimer + DTMULT)%flowRate
	
	super.preSpriteDraw(self, sprite)
end

function actor:onSpriteDraw(sprite)
	super.onSpriteDraw(self, sprite)
	Draw.popShader()
end

return actor
