local Flasque, super = Class(EnemyBattler)

local actColours = {
	"Red", "Green", "Blue"
}

function Flasque:init()
	super.init(self)

	-- Enemy name
	self.name = "Flasque"
	self:setActor("flasque")

	-- Enemy health
	self.max_health = 600
	self.health = 600
	self.attack = 7
	self.defense = 0
	self.money = 150
	--self.spare_points = 20

	self.actor.flasqueColour = {0,0,0}
	self.actor.flasqueFill = 0
	
	self.waves = {
		"flasque/base"
	}

	-- Dialogue randomly displayed in the enemy's speech bubble
	self.dialogue = {
		"mrrroww",
		"meow",
		":3",
	}

	-- Check text (automatically has "ENEMY NAME - " at the start)
	self.check = "AT 27 DF 24\n* Cat filled with unknown\ncolorful substances."
	if Game:hasPartyMember("susie") then self.check = self.check.."[react:Aww sweet\\,\nFruit Punch!, 420,40,smile,susie]" end

	-- Text randomly displayed at the bottom of the screen each turn
	self.text = {
		"* Flasque is drinking from the vials.",
		"* Flasque is experimenting with different meows.",
		"* Flasque considers switching to subtractive color mixing.",
	}
	-- Text displayed at the bottom of the screen when the enemy has low health
	self.low_health_text = "* Flasque looks like it's about to spill over."
	self.spareable_text = "* Flasque is filled to the brim with color."

	for i, v in ipairs(actColours) do
		self:registerAct("Fill "..v, "Fill up\n"..v.." vial\nfor MERCY")
	end

	self:registerAct("Fill Rainbow", "Fill all\nvials for\nMERCY", {"susie","chloe"})
end

local function xact(obj, battler)
	local m = obj.mercy
	obj:addMercy(20)
	m = obj.mercy - m

	-- Calculate colour from party member colour
	local c = battler.chara.color
	local fills = math.max(c[1],c[2],c[3])
	c = {c[1]/fills,c[2]/fills,c[3]/fills}

	for i, v in ipairs(c) do
		obj.actor.flasqueColour[i] = obj.actor.flasqueColour[i] + v*m
	end
	
	return "* "..battler.chara:getName().." added to Flasque's color."
end

function Flasque:onAct(battler, name)
	if name == "Fill Rainbow" then
		self.dialogue_override = "@w@"
		self.wave_override = "flasque/fillrainbow"

		return {
			"* Everyone offers to fill Flasque's vials!"
		}
	elseif name:sub(1,4) == "Fill" then
		self.dialogue_override = ">w<"

		local c
		for i, v in ipairs(actColours) do
			c = name == "Fill "..v and i or c
		end

		self.wave_override = "flasque/fill"
		self.wave_colour = c

		return {
			"* You offer to fill Flasque's [color:"..actColours[c]:lower().."]"..actColours[c].."[color:reset] vial."
		}
		
	elseif name == "Standard" then --X-Action
		return xact(self,battler)
	end

	-- If the act is none of the above, run the base onAct function
	-- (this handles the Check act)
	return super.onAct(self, battler, name)
end

function Flasque:isXActionShort() return true end

function Flasque:onShortAct(battler, name)
	if name == "Standard" then --X-Action
		return xact(self,battler)
	end
end

function Flasque:update()
	super.update(self)
	
	self.actor.flasqueFill = (self.mercy+self.temporary_mercy)/100
end

return Flasque
