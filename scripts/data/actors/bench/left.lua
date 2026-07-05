local actor, super = Class(Actor)

function actor:init()
    super.init(self)
    
	self.width = 15
	self.height = 40
	self.hitbox = { 2, 15, 12, 25 }

    self.path = "objects/bench"
    self.default = "left"
end

return actor
