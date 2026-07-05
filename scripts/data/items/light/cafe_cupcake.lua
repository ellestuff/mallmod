local item, super = Class(Item, "light/cafe_cupcake")

function item:init(inventory)
    super.init(self)

    -- Display name
    self.name = "Café Cupcake"

    -- Item type (item, key, weapon, armor)
    self.type = "item"
    -- Whether this item is for the light world
    self.light = true

    self.description = "A cupcake the size of a normal cake."

    self.check = "A cupcake\nthe size of a normal cake. [wait:5]How do you even eat all of this?"

    self.usable_in = "all"
    self.result_item = nil

	self.becca_shop = true
end

function item:onWorldUse()
	Game.world:startCutscene("mall","becca_eat", "cupcake")
    return true
end

function item:onToss()
    Game.world:startCutscene("mall","becca_drop")
    return false
end

return item
