local Dummy, super = Class(Encounter)

function Dummy:init()
    super.init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
    self.text = "* What."

    -- Battle music ("battle" is rude buster)
    self.music = "ruder"
    -- Enables the purple grid battle background
    self.background = true

    self:addEnemy("flasque")
    self:addEnemy("flasque")
    self:addEnemy("flasque")
end

return Dummy
