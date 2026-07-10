local actor, super = Class(Actor, "chloe")

function actor:init()
	super.init(self)
	self.name = "Chloe"

	self.width = 23
	self.height = 47

	self.hitbox = {2, 35, 19, 14}

	self.color = {237/255, 100/255, 91/255}

	self.path = "party/chloe/dark"
	self.default = "walk"

	self.voice = "chloe"
    self.portrait_path = "face/chloe dw"
    self.portrait_offset = {-8,12}

	self.animations = {
		["battle/idle"] = {"battle/idle",1/6,true}
	}

    self.offsets = {
        ["walk/left"] = {0, 0}
    }
end

return actor
