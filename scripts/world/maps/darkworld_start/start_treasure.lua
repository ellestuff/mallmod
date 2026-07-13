return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.12.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 9,
  nextobjectid = 40,
  properties = {},
  tilesets = {
    {
      name = "Neon Walls",
      firstgid = 1,
      filename = "../../tilesets/neon_bg.tsx",
      exportfilename = "../../tilesets/neon_bg.lua"
    },
    {
      name = "Neon Floor",
      firstgid = 257,
      filename = "../../tilesets/neon_floor.tsx",
      exportfilename = "../../tilesets/neon_floor.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 1,
      name = "tiles",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        296, 296, 296, 296, 0, 9, 50, 2, 0, 0, 257, 270, 258, 0, 1, 50,
        0, 0, 0, 296, 0, 0, 0, 49, 0, 0, 269, 293, 276, 50, 10, 0,
        50, 50, 2, 296, 0, 0, 257, 270, 270, 270, 288, 293, 276, 0, 0, 0,
        0, 0, 49, 0, 0, 0, 269, 293, 293, 293, 293, 293, 287, 270, 258, 0,
        0, 257, 270, 270, 270, 270, 288, 293, 293, 293, 293, 293, 293, 293, 276, 0,
        0, 269, 293, 293, 293, 293, 293, 293, 293, 293, 293, 293, 293, 293, 276, 0,
        0, 269, 293, 293, 293, 293, 293, 293, 293, 293, 281, 275, 275, 275, 264, 0,
        0, 263, 275, 275, 275, 275, 275, 275, 275, 275, 264, 0, 0, 49, 0, 0,
        0, 0, 0, 49, 0, 0, 0, 0, 49, 0, 0, 0, 0, 9, 257, 270,
        0, 0, 1, 10, 0, 0, 0, 0, 49, 0, 0, 0, 257, 270, 288, 293
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "polygon",
          x = 200,
          y = 160,
          width = 40,
          height = 80,
          rotation = 0,
          opacity = 1,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = 0 },
            { x = 40, y = 80 },
            { x = 0, y = 80 }
          },
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 200,
          width = 40,
          height = 160,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 400,
          width = 400,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 240,
          width = 40,
          height = 160,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 200,
          width = 160,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "",
          type = "",
          shape = "polygon",
          x = 520,
          y = 160,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 80, y = 0 },
            { x = 80, y = 40 },
            { x = 0, y = 40 }
          },
          properties = {}
        },
        {
          id = 34,
          name = "",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 360,
          width = 160,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "polygon",
          x = 400,
          y = 40,
          width = 120,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 120, y = 0 },
            { x = 120, y = 40 },
            { x = 0, y = 40 }
          },
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "polygon",
          x = 520,
          y = 80,
          width = 40,
          height = 80,
          rotation = 0,
          opacity = 1,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = 0 },
            { x = 40, y = 80 },
            { x = 0, y = 80 }
          },
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "polygon",
          x = 360,
          y = 80,
          width = 40,
          height = 80,
          rotation = 0,
          opacity = 1,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = 0 },
            { x = 40, y = 80 },
            { x = 0, y = 80 }
          },
          properties = {}
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 120,
          width = 160,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 14,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = -20,
          y = 80,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "darkworld_start/climb_start",
            ["marker"] = "right"
          }
        },
        {
          id = 18,
          name = "",
          type = "climbarea",
          shape = "rectangle",
          x = 120,
          y = 80,
          width = 40,
          height = 120,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "climbentry",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["target"] = { id = 22 }
          }
        },
        {
          id = 22,
          name = "climbexit",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["target"] = { id = 24 }
          }
        },
        {
          id = 32,
          name = "chest",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 100,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["item"] = "neonwrist"
          }
        },
        {
          id = 35,
          name = "",
          type = "climbarea",
          shape = "rectangle",
          x = 0,
          y = 80,
          width = 120,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 13,
          name = "spawn",
          type = "",
          shape = "point",
          x = 320,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "point",
          x = 140,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "entry_climb",
          type = "",
          shape = "point",
          x = 60,
          y = 100,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["player_state"] = "CLIMB"
          }
        }
      }
    }
  }
}
