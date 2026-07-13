local Dummy, super = Class(Encounter)

function Dummy:init()
    super.init(self)

    self.text = "* A lone Flasque approaches!"

    self.music = "ruder"
	
    self.background = true

    self:addEnemy("flasque")
end

return Dummy
