local actor, super = Class(Actor)

function actor:init()
    super.init(self)
    
	self.width = 16
	self.height = 27
	self.hitbox = { 1, 18, 14, 12 }

    self.path = "objects/plant"
    self.default = ""
end

return actor
