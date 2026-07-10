return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.12.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 30,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 12,
  nextobjectid = 55,
  properties = {
    ["light"] = true,
    ["music"] = "alley_ambience"
  },
  tilesets = {
    {
      name = "mall",
      firstgid = 1,
      filename = "../../tilesets/mall.tsx",
      exportfilename = "../../tilesets/mall.lua"
    },
    {
      name = "mall_doors",
      firstgid = 57,
      filename = "../../tilesets/mall_doors.tsx",
      exportfilename = "../../tilesets/mall_doors.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
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
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
        9, 9, 0, 0, 9, 9, 9, 43, 43, 52, 9, 9, 9, 9, 9, 9, 9, 30, 30, 30, 9, 9, 9, 9, 9, 9, 9, 43, 43, 43,
        9, 9, 44, 43, 9, 9, 9, 43, 50, 43, 9, 9, 9, 9, 9, 9, 9, 37, 30, 30, 9, 9, 9, 9, 9, 9, 9, 50, 51, 51,
        16, 16, 30, 30, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        30, 30, 37, 30, 30, 30, 30, 30, 30, 37, 30, 30, 30, 30, 30, 30, 30, 30, 37, 37, 30, 30, 30, 30, 30, 30, 37, 30, 30, 30,
        29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29,
        29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29,
        29, 29, 36, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29,
        29, 29, 29, 29, 29, 29, 29, 29, 36, 36, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29,
        30, 30, 30, 30, 37, 30, 30, 30, 30, 30, 37, 37, 37, 30, 30, 30, 30, 37, 30, 30, 30, 30, 30, 30, 30, 30, 37, 30, 30, 30,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 12,
      id = 9,
      name = "a",
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
        0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 90, 91, 0, 0, 0, 6, 6, 6, 0, 41, 90, 91, 0, 0, 0, 0, 0, 0,
        0, 41, 6, 6, 0, 0, 0, 0, 0, 0, 0, 41, 101, 102, 0, 0, 0, 13, 13, 13, 0, 41, 101, 102, 0, 0, 0, 0, 0, 0,
        0, 48, 13, 13, 0, 0, 0, 0, 0, 0, 0, 48, 112, 113, 0, 0, 0, 0, 0, 0, 0, 48, 112, 113, 0, 0, 0, 0, 0, 0,
        0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 89, 143, 0, 0, 0, 125, 126, 127, 0, 0, 0, 0, 0, 0, 0, 125, 126, 127, 0, 0, 0, 0, 0, 0, 0, 125, 126, 127,
        0, 0, 100, 144, 123, 124, 0, 136, 137, 138, 0, 0, 0, 0, 123, 124, 0, 136, 137, 138, 0, 0, 0, 0, 123, 124, 0, 136, 137, 138,
        0, 0, 135, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 12,
      id = 11,
      name = "c",
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 61, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 72, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 83, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "floormirror",
      class = "objects",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "floormirror",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 160,
          width = 1200,
          height = 240,
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
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 120,
          width = 1050,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 400,
          width = 1200,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 120,
          width = 90,
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
          id = 20,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 120,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1"] = "* (\"Chloe's Home.\")"
          }
        },
        {
          id = 21,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 120,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (It's locked.)"
          }
        },
        {
          id = 22,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (\"Sophie's Home.\")"
          }
        },
        {
          id = 23,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 880,
          y = 120,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (It's locked.)"
          }
        },
        {
          id = 24,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 120,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (\"Rebecca's Home.\")"
          }
        },
        {
          id = 26,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 1120,
          y = 160,
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
          id = 27,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 720,
          y = 160,
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
          id = 28,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 160,
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
          id = 30,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 1200,
          y = 160,
          width = 40,
          height = 240,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "mall/cafeOutside",
            ["marker"] = "entryLeft"
          }
        },
        {
          id = 31,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 160,
          width = 40,
          height = 240,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "mall/hall",
            ["marker"] = "right"
          }
        },
        {
          id = 32,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 160,
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
          id = 33,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 160,
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
          id = 34,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 1040,
          y = 160,
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
          id = 37,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 90,
          y = 100,
          width = 60,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "mall/chloeEntrance",
            ["marker"] = "entry"
          }
        },
        {
          id = 39,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 380,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["actor"] = "bench/bottom",
            ["cutscene"] = "generic.bench"
          }
        },
        {
          id = 40,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 380,
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
          id = 41,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (It's locked.)"
          }
        },
        {
          id = 42,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (\"Vacant.\")"
          }
        },
        {
          id = 43,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 520,
          y = 380,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["actor"] = "bench/bottom",
            ["cutscene"] = "generic.bench"
          }
        },
        {
          id = 44,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 380,
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
          id = 45,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 720,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (It's locked.)"
          }
        },
        {
          id = 46,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 120,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (\"Vacant.\")"
          }
        },
        {
          id = 47,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 920,
          y = 380,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["actor"] = "bench/bottom",
            ["cutscene"] = "generic.bench"
          }
        },
        {
          id = 48,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 1000,
          y = 380,
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
          id = 49,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1120,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (It's locked.)"
          }
        },
        {
          id = 50,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1040,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (\"Vacant.\")"
          }
        },
        {
          id = 51,
          name = "darkness",
          type = "",
          shape = "point",
          x = 40,
          y = 40,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 52,
          name = "darknessSpotlight",
          type = "",
          shape = "point",
          x = 120,
          y = 110,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["alpha"] = 0.3,
            ["count"] = 4,
            ["move"] = 4,
            ["radius"] = 70,
            ["speed"] = 0.3
          }
        },
        {
          id = 53,
          name = "darknessSpotlight",
          type = "",
          shape = "point",
          x = 340,
          y = 100,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["alpha"] = 0.3,
            ["count"] = 4,
            ["move"] = 4,
            ["radius"] = 80,
            ["speed"] = 0.3
          }
        },
        {
          id = 54,
          name = "darknessSpotlight",
          type = "",
          shape = "point",
          x = 1140,
          y = 100,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["alpha"] = 0.3,
            ["count"] = 4,
            ["move"] = 4,
            ["radius"] = 80,
            ["speed"] = 0.3
          }
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 30,
      height = 12,
      id = 10,
      name = "b",
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
        6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          id = 15,
          name = "right",
          type = "",
          shape = "point",
          x = 1160,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "left",
          type = "",
          shape = "point",
          x = 40,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "spawn",
          type = "",
          shape = "point",
          x = 160,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "chloe",
          type = "",
          shape = "point",
          x = 120,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
