local actor, super = Class(Actor)

function actor:init()
    super.init(self)
    
	self.width = 120
	self.height = 14
	self.hitbox = {0,0,0,0}
    self.path = "objects/tape_north"
    self.default = ""
end

return actor
