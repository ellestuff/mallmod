local item, super = Class(Item)

function item:init()
    super.init(self)

    -- Display name
    self.name = "NeonWrist"

    -- Item type (item, key, weapon, armor)
    self.type = "armor"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/armor"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = "Made\nof purple LED strips"
    -- Menu description
    self.description = "A tough bracelet made of purple LED strips,\neminating a soft light."

    -- Default shop price (sell price is halved)
    self.price = 200
    -- Whether the item can be sold
    self.can_sell = true

    -- Consumable target mode (ally, party, enemy, enemies, or none)
    self.target = "none"
    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "all"
    -- Item this item will get turned into when consumed
    self.result_item = nil
    -- Will this item be instantly consumed in battles?
    self.instant = false

    -- Equip bonuses (for weapons and armor)
    self.bonuses = {
        defense = 5,
    }
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_name = nil
    self.bonus_icon = nil

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {}

    -- Character reactions
    self.reactions = {
        susie = "How do I untangle this thing?",
        chloe = "You want me to WEAR this?",
    }
end

return item
