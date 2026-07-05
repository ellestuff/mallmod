local actor, super = Class(Actor, "tailspawn")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Tail Spawn"

    -- Width and height for this actor, used to determine its center
    self.width = 59
    self.height = 68

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = { 8, 53, 37, 15 }

    -- Whether this actor flips horizontally (optional, values are "right" or "left", indicating the flip direction)
    self.flip = nil

    -- Path to this actor's sprites (defaults to "")
    self.path = "enemies/tailspawn"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "idle"

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    self.animations = {
        idle = {"idle", 0.15, true}
    }
end

return actor
