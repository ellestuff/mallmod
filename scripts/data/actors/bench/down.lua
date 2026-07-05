local actor, super = Class(Actor)

function actor:init()
    super.init(self)
    
	self.width = 40
	self.height = 25
	self.hitbox = { 1, 13, 38, 12 }

    self.path = "objects/bench"
    self.default = "down"
end

return actor
