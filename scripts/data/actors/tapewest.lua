local actor, super = Class(Actor)

function actor:init()
    super.init(self)
    
	self.width = 52
	self.height = 133
	self.hitbox = {0,0,0,0}
    self.path = "objects/tape_west"
    self.default = ""
end

return actor
