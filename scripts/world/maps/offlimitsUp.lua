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
  nextobjectid = 62,
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
        0, 0, 0, 0, 0, 37, 29, 29, 29, 29, 30, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 30, 29, 29, 29, 36, 30, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 30, 29, 36, 29, 29, 37, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 30, 29, 29, 29, 29, 30, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 37, 29, 29, 29, 29, 30, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 37, 36, 29, 29, 29, 30, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 30, 29, 29, 36, 29, 30, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 30, 29, 29, 29, 29, 30, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 30, 29, 29, 29, 29, 37, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 37, 29, 29, 29, 36, 30, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 30, 29, 29, 29, 29, 30, 0, 0, 0, 0, 0
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
        0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
      objects = {
        {
          id = 46,
          name = "floormirror",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 40,
          width = 240,
          height = 440,
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
          id = 34,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 200,
          width = 40,
          height = 280,
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
          x = 440,
          y = 200,
          width = 40,
          height = 280,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 59,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 160,
          width = 240,
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
          id = 56,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 480,
          width = 240,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "spawn",
            ["marker"] = "top"
          }
        },
        {
          id = 60,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 160,
          width = 240,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (There's yellow tape blocking this path.)",
            ["text1_2"] = "* (Best not to wander too far\ninto uncharted territory.)"
          }
        },
        {
          id = 61,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 180,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["actor"] = "tapenorth"
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
          id = 44,
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
          id = 45,
          name = "entry",
          type = "",
          shape = "point",
          x = 320,
          y = 460,
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
