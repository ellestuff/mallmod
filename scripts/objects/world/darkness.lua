---@class Darkness : Event
---
---@field offset    number  *[Property `offset`]* The y-offset for reflections drawn in this mirror (Defaults to `0`)
---@field opacity   number  *[Property `opacity`]* The opacity of reflections drawn in the mirror (Defaults to `0.2`)
---@field bottom    number
---
---@overload fun(...) : Darkness
local Darkness, super = Class(Event)

function Darkness:init(properties)
    super.init(self, 0, 0, 640, 480)

    self:setParallax(0, 0)

	self.color = ColorUtils.hexToRGB(properties.color or "3B363E")

    self.light_buffer = love.graphics.newCanvas(640, 480)
end

--- Finds and draws all character's reflections
function Darkness:drawLights()
	for k, obj in pairs(Game.stage:getObjects(darknessSpotlight)) do
		for i = 1, obj.count do
			Draw.setColor(obj.color, obj.alpha)
			local x,y = Game.world:localToScreenPos(obj.x,obj.y)
			
			x = x + math.sin((Kristal.getTime() * obj.speed + (obj.id+(i*.39%1))*72356) * math.pi * (i*.2%1)) * obj.move
			y = y + math.sin((Kristal.getTime() * obj.speed + (obj.id+(i*.24%1))*67829) * math.pi * (i*.32%1)) * obj.move
			
			love.graphics.circle("fill",x,y,obj.radius)
		end
	end
	Draw.setColor(1,1,1,1)
end

function Darkness:draw()
	super.draw(self)
	
    love.graphics.push("all")
    -- Draw the lights onto a buffer
    Draw.pushCanvas(self.light_buffer)
    love.graphics.clear(self.color)
    love.graphics.origin()
    self:drawLights()
    Draw.popCanvas()

    love.graphics.pop()

    -- Draw the light buffer onto the screen (multiply)
    love.graphics.push("all")
    love.graphics.setBlendMode("multiply", "premultiplied")
    Draw.drawCanvas(self.light_buffer)

    love.graphics.pop()


end

function Darkness:update()
	super.update(self)
	self:setLayer(WORLD_LAYERS["below_ui"])
end

return Darkness
