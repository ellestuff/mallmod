---@class FloorMirror : Event
---
---@field offset    number  *[Property `offset`]* The y-offset for reflections drawn in this mirror (Defaults to `0`)
---@field opacity   number  *[Property `opacity`]* The opacity of reflections drawn in the mirror (Defaults to `0.2`)
---@field bottom    number
---
---@overload fun(...) : FloorMirror
local FloorMirror, super = Class(Event)

function FloorMirror:init(x, y, shape, properties)
	super.init(self, x, y, shape)

	properties = properties or {}

	self.offset = properties["offset"] or 0
	self.opacity = properties["opacity"] or 0.2

	self.bottom = self.y + self.height
end

--- Finds and draws all character's reflections
function FloorMirror:drawMirror()
	local to_draw = {}
	for _, obj in ipairs(Game.world.children) do
		if obj:includes(Character) and obj.visible then
			to_draw[#to_draw+1] = obj
		end
	end
	for _, obj in ipairs(to_draw) do
		self:drawCharacter(obj)
	end
end

--- Draws a character's reflection
---@param chara Character
function FloorMirror:drawCharacter(chara)

	Draw.pushShader("mirrorfade")

	-- See Object.drawSelf
	love.graphics.push()
	chara:preDraw()
	local _, h = chara:getScaledSize()

	love.graphics.translate(0, h)
	love.graphics.scale(1,-1)
	if chara.draw_children_below then
		chara:drawChildren(nil, chara.draw_children_below)
	end
	chara:draw()
	if chara.draw_children_above then
		chara:drawChildren(chara.draw_children_above)
	end
	chara:postDraw()
	love.graphics.pop()
	Draw.popShader()
end

function FloorMirror:draw()
	super.draw(self)

	local canvas = Draw.pushCanvas(self.width, self.height)
	love.graphics.clear()
	love.graphics.translate(-self.x, -self.y)
	self:drawMirror()
	Draw.popCanvas()

	Draw.setColor(1, 1, 1, self.opacity)
	Draw.draw(canvas)
	Draw.setColor(1, 1, 1, 1)
end

return FloorMirror
