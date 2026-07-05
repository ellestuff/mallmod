local item, super = Class(Item)

function item:init(inventory)
    super.init(self)

    -- Display name
    self.name = "Café Pizza"

    -- Item type (item, key, weapon, armor)
    self.type = "item"
    -- Whether this item is for the light world
    self.light = true

    self.description = "A pizza slice the size of your head."

    self.check = "A slice of pizza\nthe size of your head. [wait:5]You wonder how big a full pizza is."

    self.usable_in = "all"
    self.result_item = nil

	self.becca_shop = true
end

function item:onWorldUse()
	Game.world:startCutscene("mall","becca_eat", "pizza slice")
    return true
end

function item:onToss()
    Game.world:startCutscene("mall","becca_drop")
    return false
end

return item
