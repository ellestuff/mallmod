return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.12.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 40,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 12,
  nextobjectid = 60,
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
      width = 40,
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
        9, 9, 9, 10, 30, 29, 29, 29, 29, 30, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
        30, 30, 37, 10, 30, 29, 29, 36, 29, 37, 8, 9, 9, 9, 9, 9, 37, 30, 30, 9, 9, 9, 9, 9, 9, 9, 43, 43, 43, 9, 9, 9, 9, 9, 9, 9, 30, 37, 30, 9,
        30, 37, 30, 10, 37, 29, 29, 29, 29, 30, 8, 9, 9, 9, 9, 9, 30, 30, 37, 9, 9, 9, 9, 9, 9, 9, 43, 44, 43, 9, 9, 9, 9, 9, 9, 9, 37, 30, 30, 9,
        16, 16, 16, 17, 30, 29, 36, 29, 29, 30, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        30, 30, 30, 30, 31, 29, 29, 29, 29, 31, 30, 30, 30, 30, 30, 37, 30, 30, 30, 30, 30, 30, 30, 37, 30, 30, 30, 30, 30, 30, 37, 37, 30, 30, 37, 37, 30, 30, 30, 30,
        36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29,
        29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29,
        29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 36, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29,
        29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29, 29, 29, 29, 29, 29, 29, 36, 29, 29, 29,
        30, 30, 37, 37, 31, 29, 29, 29, 29, 31, 30, 30, 30, 30, 30, 37, 30, 30, 30, 30, 37, 30, 30, 37, 37, 30, 30, 30, 30, 30, 30, 37, 30, 30, 30, 30, 37, 30, 30, 30,
        0, 0, 0, 0, 30, 36, 29, 29, 29, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 30, 29, 29, 29, 29, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
      objects = {
        {
          id = 1,
          name = "floormirror",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 0,
          width = 240,
          height = 160,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "floormirror",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 160,
          width = 1600,
          height = 240,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "floormirror",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 400,
          width = 240,
          height = 80,
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
      width = 40,
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
        0, 0, 0, 2147483689, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        6, 6, 6, 2147483689, 0, 0, 0, 0, 0, 0, 41, 90, 91, 0, 0, 0, 6, 6, 6, 0, 41, 90, 91, 0, 0, 0, 0, 0, 0, 0, 41, 90, 91, 0, 0, 0, 6, 6, 6, 0,
        13, 13, 13, 2147483689, 0, 0, 0, 0, 0, 0, 41, 101, 102, 0, 0, 0, 13, 13, 13, 0, 41, 101, 102, 0, 0, 0, 0, 0, 0, 0, 41, 101, 102, 0, 0, 0, 13, 13, 13, 0,
        0, 0, 0, 2147483696, 0, 0, 0, 0, 0, 0, 48, 112, 113, 0, 0, 0, 0, 0, 0, 0, 48, 112, 113, 0, 0, 0, 0, 0, 0, 0, 48, 112, 113, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 2147483703, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 40,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        125, 126, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 126, 127, 0, 0, 0, 0, 0, 0, 0, 125, 126, 127, 0, 0, 0, 0, 0, 0, 0, 125, 126, 127, 0,
        136, 137, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 137, 138, 0, 0, 0, 0, 0, 0, 0, 136, 137, 138, 0, 0, 0, 0, 0, 0, 0, 136, 137, 138, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 40,
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
        6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
        13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 124, 0, 0, 0, 0, 0, 0, 0, 0, 123, 124, 0, 0, 0, 0, 0, 0, 0, 0, 123, 124, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 0,
          width = 40,
          height = 160,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 0,
          width = 40,
          height = 120,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 120,
          width = 1200,
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
          x = 440,
          y = 400,
          width = 1160,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 400,
          width = 40,
          height = 80,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 400,
          width = 40,
          height = 80,
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
          x = 0,
          y = 120,
          width = 120,
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
          y = 400,
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
          id = 19,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 440,
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
          id = 20,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 520,
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
          id = 21,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 840,
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
          x = 920,
          y = 120,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (\"Bea's Home\".)"
          }
        },
        {
          id = 23,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1240,
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
          x = 1320,
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
          id = 29,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 40,
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
          x = 1600,
          y = 160,
          width = 40,
          height = 240,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "mall/southHall",
            ["marker"] = "left"
          }
        },
        {
          id = 34,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 480,
          width = 240,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "mall/void",
            ["marker"] = "entry"
          }
        },
        {
          id = 36,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 160,
          y = -40,
          width = 240,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "mall/offlimitsUp",
            ["marker"] = "entry"
          }
        },
        {
          id = 37,
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
            ["map"] = "mall/offlimitsLeft",
            ["marker"] = "entry"
          }
        },
        {
          id = 38,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 1480,
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
          id = 39,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 1080,
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
          id = 40,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 680,
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
          id = 41,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 1000,
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
          id = 42,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 600,
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
          id = 43,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 1400,
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
          id = 45,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 480,
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
          id = 46,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 560,
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
          id = 47,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 880,
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
          x = 960,
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
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 1280,
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
          id = 50,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 1360,
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
          id = 51,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1480,
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
          id = 52,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1400,
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
          id = 53,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1080,
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
          id = 54,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1000,
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
          id = 55,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 680,
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
          id = 56,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 400,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (\"Elly's Home.\")"
          }
        },
        {
          id = 58,
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
          id = 59,
          name = "darknessSpotlight",
          type = "",
          shape = "point",
          x = 1100,
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
      width = 40,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
          x = 1560,
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
          id = 17,
          name = "top",
          type = "",
          shape = "point",
          x = 280,
          y = 40,
          width = 0,
          height = 0,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "bottom",
          type = "",
          shape = "point",
          x = 280,
          y = 460,
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
          x = 760,
          y = 280,
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
