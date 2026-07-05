local character, super = Class(PartyMember, "chloe")

function character:init()
	super.init(self)

	-- Display name
	self.name = "Chloe"

	-- Actor (handles overworld/battle sprites)
	self:setActor("chloe")
	self:setLightActor("chloe_lw")

	-- Display level (saved to the save file)
	self.level = Game.chapter
	-- Default title / class (saved to the save file)
	self.title = '"Yoyomancer"\nDoesn\'t know how to\nuse a yoyo.'

    -- Determines which character the soul comes from (higher number = higher priority)
    self.soul_priority = 1

	-- Whether the party member can act / use spells
	self.has_act = false
	self.has_spells = true

	-- Whether the party member can use their X-Action
	self.has_xact = true
	-- X-Action name (displayed in this character's spell menu)
	self.xact_name = "C-Action"

	-- Spells
	--self:addSpell("heal_prayer")

	-- Current health (saved to the save file)
	self.health = 190

	-- Base stats (saved to the save file)
	self.stats = {
		health = 190,
		attack = 13,
		defense = 3,
		magic = 2
	}

	-- Max stats from level-ups
	self.max_stats = {
		health = 190
	}

	-- Weapon icon in equip menu
	self.weapon_icon = "ui/menu/equip/yoyo"

	-- Equipment (saved to the save file)
	self:setWeapon("felt_yoyo")
	--self:setArmor(1, "amber_card")
	--self:setArmor(2, "amber_card")

	-- Default light world equipment item IDs (saves current equipment)
	--self.lw_weapon_default = "light/bow"
	--self.lw_armor_default = "light/bandage"

	self.color = {237/255, 100/255, 91/255}
	self.xact_color = {246/255, 177/255, 173/255}
	-- Head icon in the equip / power menu
	self.menu_icon = "party/chloe/head"
	-- Path to head icons used in battle
	self.head_icons = "party/chloe/icon"
	-- Name sprite
	self.name_sprite = "party/chloe/name"

	-- Effect shown above enemy after attacking it
	--self.attack_sprite = "effects/attack/shot"
	-- Sound played when this character attacks
	--self.attack_sound = "heartshot_dr_b"
	-- Pitch of the attack sound
	--self.attack_pitch = 1

	-- Battle position offset (optional)
	--self.battle_offset = {2, 1}

	self:addSpell("charm")
end

return character
