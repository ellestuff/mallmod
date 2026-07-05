local actor, super = Class(Actor, "elle")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Elle"

    -- Width and height for this actor, used to determine its center
    self.width = 25
    self.height = 45

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = { 2, 33, 20, 12 }

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = { 242/255, 95/255, 109/255 }

    -- Whether this actor flips horizontally (optional, values are "right" or "left", indicating the flip direction)
    self.flip = nil

    -- Path to this actor's sprites (defaults to "")
    self.path = "npcs"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = Game:getFlag("elle_lw") and "elle_lw" or "elle"

    -- Sound to play when this actor speaks (optional)
    self.voice = "squeak"
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = nil
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = nil

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    -- Table of talk sprites and their talk speeds (default 0.25)
    self.talk_sprites = {}

    -- Table of sprite animations
    self.animations = {}

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {}
end

return actor
