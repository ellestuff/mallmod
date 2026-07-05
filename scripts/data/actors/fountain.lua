local actor, super = Class(Actor, "fountain")

function actor:init()
    super.init(self)
    
	self.width = 96
	self.height = 70
	self.hitbox = { 0, 38, 96, 55 }

    self.path = "objects/fountain"
    self.default = "fountain"

	self.animations = {
		["fountain"] = {"fountain",1/2,true}
	}
end

return actor
