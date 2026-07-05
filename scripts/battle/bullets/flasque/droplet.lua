---@class FlasqueBullet : Bullet
local FlasqueBullet, super = Class(Bullet)

---@param x number # The X position of the bullet
---@param y number # The Y position of the bullet
---@param vel number # The Velocity of the bullet
---@param grav number # The gravity strength of the bullet
---@param tx number # The X position of the target (Aims at the soul if not specified)
---@param ty number # The Y position of the target (Aims at the soul if not specified)
function FlasqueBullet:init(x, y, vel, grav, tx, ty)
    -- Last argument = sprite path
    super.init(self, x, y, "bullets/flasque/droplet")
	self.collider = CircleCollider(self, 4, 10, self.width/2 - 2)
	
	tx = tx or Game.battle.soul.x
	ty = ty or Game.battle.soul.y

	-- https://discord.com/channels/899153719248191538/1520503882373922998/1520566550392864839
	vel = vel or 8
	grav = grav or .5
	local tx = -math.abs(tx - x)
	local ty = y - ty

	local equationP1 = math.sqrt((vel ^ 4) - (grav * ((grav * (tx ^ 2)) + (2 * ty * (vel ^ 2)))))

	if equationP1 ~= equationP1 then self.fail = true end

	local angle = math.atan(((vel ^ 2) + equationP1) / (grav * tx))
	if tx - x < 0 then angle = math.pi - angle end

	self.physics.direction = angle
	self.physics.gravity = grav
	self.physics.speed = vel

	self.sprite:setRotationOriginExact(4,10)
end

function FlasqueBullet:update()
    -- For more complicated bullet behaviours, code here gets called every update
    super.update(self)
	self.sprite.rotation = self.physics.direction - math.pi/2
end



return FlasqueBullet
