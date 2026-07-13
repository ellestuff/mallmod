local FlasqueVialController, super = Class(Object)

---@param width number # The width of the controller's rotation
---@param timer number # The amount of frames (assuming 30fps) per full rotation
function FlasqueVialController:init(timer, width, height)
    local arena = Game.battle.arena
    super.init(self,arena.x,arena:getBottom()+60)

	self.frameTimer = 0
	self.timerLen = timer or 100
	self.width = width or 0
	self.height = height or 0

	self.rainbow = false
end

function FlasqueVialController:update()
    super.update(self)
	
    local arena = Game.battle.arena
	self.x = arena.x
	self.y = arena:getBottom()+60

	for i, v in ipairs(self.children) do
		-- Set Position
		local d = (self.frameTimer/self.timerLen+i/#self.children)%1
		local sin = math.sin(d*math.pi*2)
		
		v.sprite.alpha = MathUtils.lerp(0.2,1,MathUtils.clamp(sin,-.2,0)*5+1)
		v.layer = sin+650
		v.x = math.cos(d*math.pi*2)*self.width
		v.y = sin*self.height

		v.collidable = sin>0

		-- Collide with bullets
		if self.bullet_stack then
			for j, v2 in ipairs(self.bullet_stack) do
				if v:collidesWith(v2) and (v2.flasque == v.flasque or self.rainbow) and not v2:isRemoved() then
					if self.rainbow then
						v.flasqueFill = v.flasqueFill + .04
						
					else
					end
					local m = self.enemy.temporary_mercy
					self.enemy:addTemporaryMercy(self.rainbow and 4 or 8)
					m = self.enemy.temporary_mercy - m

					for i,v in ipairs(v2.color) do
						self.enemy.actor.flasqueColour[i] = self.enemy.actor.flasqueColour[i] + v*m/2
					end
					

					v2:remove()
				end
			end
		end
		
		if self.rainbow then
			local r,g,b = ColorUtils.HSLToRGB((i/#self.children+Kristal.getTime()/10)%1,1,0.5)
			v.flasqueColour = {r,g,b,1}
		else
			v.flasqueFill = self.enemy.actor.flasqueColour[v.flasque]/50
		end
	end

	self.frameTimer = (self.frameTimer + DTMULT)%self.timerLen
end

return FlasqueVialController
