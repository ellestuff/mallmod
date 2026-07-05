local item, super = Class(Item, "felt_yoyo")

function item:init()
	super.init(self)

	self.name = "Felt Yoyo"

	-- Display name
	self.type = "weapon"
	self.icon = "ui/menu/icon/yoyo"

	-- Equip bonuses (for weapons and armor)
	self.bonuses = {
		attack  = 6,
		defense = 0,
		magic   = 2,
	}

	-- Everyone can equip
	self.can_equip = {chloe = true}

	-- Menu description
	self.description = "A yoyo made of felt. Surprisingly tough despite its material."

	-- Default shop price (sell price is halved)
	self.price = 60
	-- Whether the item can be sold
	self.can_sell = true

	-- Character reactions (key = party member id)
	self.reactions = {
		susie = "How is this a weapon?",
		chloe = "Soft..."
	}
end

return item
