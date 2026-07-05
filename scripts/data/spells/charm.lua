local spell, super = Class(Spell, "charm")

function spell:init()
	super.init(self)

	-- Display name
	self.name = "Charm"
	-- Battle description
	self.effect = "Stronger\nACTs"
	-- Menu description
	self.description = "Convince all standard enemies for a stackable\n+50% increase in MERCY gained from ACTs."

	-- TP cost
	self.cost = 24

	-- Target mode (ally, party, enemy, enemies, or none)
	self.target = "enemies"

	-- Tags that apply to this spell
	self.tags = {}
end

function spell:getCastMessage(user, target)
	local text = 0
	for i, v in ipairs(target) do
		local c = v.charm_exempt and 1 or (not v.charmed and 2) or 0
		text = math.max(text,c)
	end
	
	if text == 2 then
		return "* "..user.chara:getName().." "..self:getCastName().."ed the enemies!\n* MERCY now increases by an\nadditional 50%!"
	elseif text == 1 then
		return "* "..user.chara:getName().." tried to "..self:getCastName().." the enemies...\n* But they didn't care."
	else
		return "* "..user.chara:getName().." tried to "..self:getCastName().." the enemies...\n* But they were all already "..self:getCastName().."ed!"
	end
end

function spell:onCast(user, target)
	local play_mercy = false
	for _,battler in ipairs(target) do
		if not (battler.charm_exempt or battler.charmed) then
			play_mercy = true
			battler:flash()
			battler.charmed = true
		end
	end
	if play_mercy then
		Assets.playSound("mercyadd")
	end
end

return spell
