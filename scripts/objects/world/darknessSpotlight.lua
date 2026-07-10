---@class DarknessSpotlight : Event
---
---@overload fun(...) : DarknessSpotlight
local DarknessSpotlight, super = Class(Event)

function DarknessSpotlight:init(x,y,properties,id)
    super.init(self, x, y)
	
	
    properties = properties or {}

	self.alpha = properties.alpha or 0.2
	self.radius = properties.radius or 20
	self.color = ColorUtils.hexToRGB(properties.color and properties.color:sub(4,9) or "ffffff")
	self.id = properties.id or 1
	self.count = properties.count or 3
	self.move = properties.move or 2
	self.speed = properties.speed or 1
	Kristal.Console:push(properties.color)
	
end

return DarknessSpotlight
