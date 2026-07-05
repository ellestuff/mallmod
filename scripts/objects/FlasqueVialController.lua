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
				if v:collidesWith(v2) and v2.flasque == v.flasque and not v2:isRemoved() then
					
					local m = self.enemy.mercy
					self.enemy:addMercy(8)
					m = self.enemy.mercy - m

					self.enemy.actor.flasqueColour[v.flasque] = self.enemy.actor.flasqueColour[v.flasque] + m/2

					v2:remove()
				end
			end
		end
		v.flasqueFill = self.enemy.actor.flasqueColour[v.flasque]/100
	end

	self.frameTimer = (self.frameTimer + DTMULT)%self.timerLen
end

return FlasqueVialController
