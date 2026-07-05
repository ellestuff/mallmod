---@class Becca : Shop
local Becca, super = Class(Shop, "becca_shop")

function Becca:init()
    super.init(self)

	self.menu_options = {
        {"Buy",  "BUYMENU" },
        {"Talk", "TALKMENU" }, -- Replaces the SELL menu
        {"Exit", "LEAVE" }
    }

	self.shop_music = nil
	self.hide_world = false

	self.encounter_text = "* Oh, [wait:5]new visitors!\n[wait:5]* Welcome to the mall!"
    self.shop_text = "* Welcome!"
    self.leaving_text = "* Cya~"
    self.buy_menu_text = "See anything you like?"
    self.buy_confirmation_text = "It's free!"
    self.buy_refuse_text = "Fair enough"
    self.buy_text = "Hope you enjoy~!"
    self.buy_too_expensive_text = "Sorry,[wait:5] but that's not enough."
    self.talk_text = "What's up?"
	self.buy_no_space_text = "Eat what you have first."

	self:registerItem("light/cafe_burger",{price=0})
	self:registerItem("light/cafe_pizza",{price=0})
	self:registerItem("light/cafe_cupcake",{price=0})
	self:registerItem("light/cafe_smoothie",{price=0})
end

function Becca:getMoney()
    return Game.lw_money
end

function Becca:setMoney(amount)
    Game.lw_money = amount
end

return Becca
