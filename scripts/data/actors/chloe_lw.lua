local actor, super = Class(Actor, "chloe_lw")

function actor:init()
	super.init(self)
	self.name = "Chloe"

	self.width = 23
	self.height = 44

	self.hitbox = {2, 31, 19, 14}

	self.color = {224/255, 145/255, 46/255}

	self.path = "party/chloe/light"
	self.default = "walk"

	self.voice = "chloe"
    self.portrait_path = "face/chloe"
    self.portrait_offset = {-8,12}
	
    self.offsets = {
        ["walk/left"] = {3, 0}
    }
end

return actor
