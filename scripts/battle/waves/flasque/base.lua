local Wave, super = Class(Wave)

function Wave:onStart()
	local attackers = self:getAttackers()
    local arena = Game.battle.arena
	
	for i, attacker in ipairs(attackers) do
		self.timer:after((i-1)/#attackers/(7-#Game.battle.enemies), function()
			local random = MathUtils.randomInt(1) == 0
			self.timer:every(1 / (7-#Game.battle.enemies), function()
				local x, y = attacker:getRelativePos(15, 15)

				local bullet = self:spawnBullet("flasque/droplet", x, y, 6+(y/30), .4, random and arena.x-10 or nil, random and arena.y or nil)
				bullet.physics.direction = bullet.physics.direction + MathUtils.random(-.2,.2) -- Minor inaccuracies

				bullet.remove_offscreen = true

				attacker:setAnimation(bullet.fail and "idle" or "meow")
			end)
		end)
	end
end

function Wave:update()
	super.update(self)
end

function Wave:onEnd()
	local attackers = self:getAttackers()

	-- Loop through all attackers
	for _, attacker in ipairs(attackers) do
		attacker:setAnimation(attacker.mercy==100 and "spared" or "idle")
	end
end

return Wave
