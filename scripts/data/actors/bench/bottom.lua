local actor, super = Class(Actor)

function actor:init()
    super.init(self)
    
	self.width = 40
	self.height = 11
	self.hitbox = { 1, 8, 38, 3 }

    self.path = "objects/bench"
    self.default = "bottom"
end

return actor
