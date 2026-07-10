-- Made by @kotonesdiary
local DarkLighting, super = Class(Object)

function DarkLighting:init()
    super.init(self, 0, 0, 640, 480)
    self:setParallax(0)
    self:setLayer(0.25)
end

function DarkLighting:draw()
    super.draw(self)
    local color = ColorUtils.mergeColor(COLORS.gray, COLORS.navy, 0.5)
    color = ColorUtils.mergeColor(color, COLORS.white, 0.5)
    color = ColorUtils.mergeColor(color, COLORS.white, self.alpha)
    Draw.setColor(color[1], color[2], color[3], 1)
    love.graphics.setBlendMode("multiply", "premultiplied")
    Draw.rectangle("fill", 0, 0, self.width, self.height)
    love.graphics.setBlendMode("alpha")
end

return DarkLighting
