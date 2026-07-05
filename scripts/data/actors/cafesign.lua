local actor, super = Class(Actor)

function actor:init()
    super.init(self)
    
	self.width = 184
	self.height = 63

    self.path = "objects/cafe_sign"
    self.default = ""
end

return actor
