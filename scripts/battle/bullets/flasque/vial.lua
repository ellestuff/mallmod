---@class FlasqueVial : Bullet
local FlasqueVial, super = Class(Bullet)

---@param x number # The X position of the bullet
---@param y number # The Y position of the bullet
---@param dir number # The dir (in radians) of the bullet
---@param speed number # The speed the bullet will move at in the specified direction
function FlasqueVial:init()
    -- Last argument = sprite path
    super.init(self, x, y, "bullets/flasque/vial")

	self.collider = Hitbox(self,0,5,self.width*2,10)
	self.can_graze = false
	self.destroy_on_hit = false
	--self.collidable = false

	self.flasqueFill = 0
	self.flasqueTimer = 0
	self.flasqueColor = {0,0,0}
	self.sprite.scale_x = 2
	self.sprite.scale_y = 2
end

function FlasqueVial:update()
    -- For more complicated bullet behaviours, code here gets called every update
    super.update(self)
end

local flowRate = 20

function FlasqueVial:draw()
	-- Calculate colour from flasque RGB fill counts
	local c = self.flasqueColour

	Draw.pushShader("flasqueVial", {
		flasqueColour = c,
		flasqueFill = 1-MathUtils.lerp(.1,.95,self.flasqueFill),
		flasqueTimer = self.flasqueTimer/flowRate*math.pi*2
	})
	
	self.flasqueTimer = (self.flasqueTimer + DTMULT)%flowRate

	super.draw(self)
	Draw.popShader()
end

return FlasqueVial
