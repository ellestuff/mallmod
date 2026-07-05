local item, super = Class(Item)

function item:init(inventory)
    super.init(self)

    -- Display name
    self.name = "Café Burger"

    -- Item type (item, key, weapon, armor)
    self.type = "item"
    -- Whether this item is for the light world
    self.light = true

    self.description = "A burger the size of your head."

    self.check = "A burger\nthe size of your head. [wait:5]How do you even eat all of this?"

    self.usable_in = "all"
    self.result_item = nil

	self.becca_shop = true
end

function item:onWorldUse()
	Game.world:startCutscene("mall","becca_eat", "burger")
    return true
end

function item:onToss()
    Game.world:startCutscene("mall","becca_drop")
    return false
end

return item
