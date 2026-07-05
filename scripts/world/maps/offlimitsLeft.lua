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
  nextlayerid = 11,
  nextobjectid = 84,
  properties = {
    ["light"] = true,
    ["music"] = "alley_ambience"
  },
  tilesets = {
    {
      name = "mall",
      firstgid = 1,
      filename = "../tilesets/mall.tsx",
      exportfilename = "../tilesets/mall.lua"
    },
    {
      name = "mall_doors",
      firstgid = 57,
      filename = "../tilesets/mall_doors.tsx",
      exportfilename = "../tilesets/mall_doors.lua"
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
      name = "Tile Layer 1",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
        0, 9, 9, 9, 9, 9, 9, 78, 79, 9, 9, 9, 9, 9, 9, 9,
        0, 9, 9, 9, 9, 9, 9, 85, 86, 9, 9, 9, 9, 9, 9, 9,
        0, 16, 16, 16, 16, 16, 16, 92, 93, 16, 16, 16, 16, 16, 16, 16,
        0, 30, 30, 30, 30, 37, 30, 30, 30, 30, 30, 30, 30, 30, 37, 30,
        0, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29,
        0, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29,
        0, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36,
        0, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29,
        0, 30, 30, 37, 37, 30, 30, 30, 30, 30, 30, 30, 30, 37, 30, 30,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 2,
      name = "decal",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
        0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 91, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "floormirror",
      class = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
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
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 160,
          width = 440,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 63,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 440,
          width = 480,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 200,
          width = 40,
          height = 120,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 320,
          width = 40,
          height = 120,
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
      id = 10,
      name = "objects_behind",
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
          id = 83,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 140,
          y = 420,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["actor"] = "tapewest"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
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
          id = 64,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 160,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (It's locked.)[wait:5]\n* (Probably for the better.)"
          }
        },
        {
          id = 65,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 160,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1"] = "* (Whoever's name was here before has been scribbled out beyond recognition.)",
            ["text2"] = "* (\"Cheshire's Home. [wait:5]Stay out.\" [wait:5]\nis written over it.)"
          }
        },
        {
          id = 66,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["actor"] = "bench/down",
            ["cutscene"] = "generic.bench"
          }
        },
        {
          id = 67,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["actor"] = "plant",
            ["cutscene"] = "generic.plant"
          }
        },
        {
          id = 68,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 200,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["actor"] = "bench/down",
            ["cutscene"] = "generic.bench"
          }
        },
        {
          id = 71,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 200,
          width = 40,
          height = 240,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "spawn",
            ["marker"] = "left"
          }
        },
        {
          id = 81,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 200,
          width = 40,
          height = 120,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1"] = "* (There's yellow tape blocking this path.)",
            ["text2"] = "* (Best not to wander too far\ninto uncharted territory.)"
          }
        },
        {
          id = 82,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 320,
          width = 40,
          height = 120,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1"] = "* (There's yellow tape blocking this path.)",
            ["text2"] = "* (Best not to wander too far\ninto uncharted territory.)"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
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
          id = 69,
          name = "spawn",
          type = "",
          shape = "point",
          x = 400,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 70,
          name = "entry",
          type = "",
          shape = "point",
          x = 600,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 9,
      name = "decal2",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1610612742, 1610612749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}
