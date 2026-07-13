local Wave, super = Class(Wave)

function Wave:init()
	super.init(self)

	self.time = 8
end

local colours = {
	{1,0,0},
	{0,1,0},
	{0,0,1}
}

function Wave:onStart()
    local arena = Game.battle.arena

	local attacker = self:getAttackers()[1]

	local bullet_stack = {}

	self.timer:every(1 / 6, function()
		local x, y = attacker:getRelativePos(15, 15)

		local random = MathUtils.randomInt(1) == 0
		
		local bullet = self:spawnBullet("flasque/droplet", x, y, 6+(y/30), .4)
		bullet.physics.direction = bullet.physics.direction + MathUtils.random(-.1,.1) -- Minor inaccuracies

		bullet.remove_offscreen = true
		
		local r,g,b = ColorUtils.HSLToRGB(MathUtils.random(),1,.5)
		bullet.color = {r,g,b}

		bullet_stack[#bullet_stack+1] = bullet

		attacker:setAnimation(bullet.fail and "idle" or "meow")
	end)

	local vial_controller = FlasqueVialController(90,60, 10)
	vial_controller.bullet_stack = bullet_stack
	vial_controller.enemy = attacker
	vial_controller.rainbow = true
	self:addChild(vial_controller)
	for i = 1, 3, 1 do
		local bullet = self:spawnBulletTo(vial_controller, "flasque/vial")
	end
end

function Wave:update()
	super.update(self)
end

function Wave:onEnd()
	local attacker = self:getAttackers()[1]
	attacker:setAnimation(attacker.mercy+attacker.temporary_mercy>=100 and "spared" or "idle")
end

return Wave
