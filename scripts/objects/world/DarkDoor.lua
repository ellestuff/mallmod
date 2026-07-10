-- Made by @ralsei_39
local DarkDoor, super = Class(Object)

function DarkDoor:init(x, y, width, height) -- From top left sowwy
    super.init(self, x, y, width, height)
    self.xsin = 0
    self.lighting = DarkLighting()
    Game.world:addChild(self.lighting)
end

function DarkDoor:draw()
    super.draw(self)
    Draw.setColor(0, 0, 0, 1)
    Draw.rectangle("fill", 0, 0, self.width, self.height)
    self.xsin = self.xsin + (0.01 * DTMULT);
    if self.xsin > 1 then
        self.xsin = 1
    end
    local amt = math.sin((Kristal.getTime() * 30) / 16) * 0.1;
    local alpha = self.xsin * (amt + 0.2)
    self.lighting.alpha = (amt * 3) + self.xsin;
    Draw.setColor(41 / 255, 41 / 255, 52 / 255, alpha)
    for i=1,5 do
        Draw.rectangle("fill", 0, self.height, self.width, ((3 / i) + amt) * self.height)
    end
    local scale1 = 1 + (amt * 3)
    local scale2 = 1 + (amt * 2)
    Draw.rectangle("fill", (self.width * 0.5) - (self.width * scale1 * 0.5), (self.height * 0.5) - (self.height * scale1 * 0.5), self.width * scale1, self.height * scale1)
    Draw.rectangle("fill", (self.width * 0.5) - (self.width * scale2 * 0.5), (self.height * 0.5) - (self.height * scale2 * 0.5), self.width * scale2, self.height * scale2)
end

return DarkDoor
