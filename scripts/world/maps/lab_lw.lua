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
  nextlayerid = 7,
  nextobjectid = 44,
  properties = {
    ["light"] = true,
    ["music"] = "alley_ambience"
  },
  tilesets = {},
  layers = {
    {
      type = "imagelayer",
      image = "../../../assets/sprites/backgrounds/lab_lw.png",
      id = 2,
      name = "Image Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      repeatx = false,
      repeaty = false,
      properties = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
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
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 440,
          width = 120,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 280,
          width = 80,
          height = 160,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 160,
          width = 40,
          height = 120,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 200,
          width = 80,
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
          y = 360,
          width = 40,
          height = 80,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 440,
          width = 200,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 120,
          width = 480,
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
      id = 5,
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
          id = 11,
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
          id = 13,
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
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
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
          id = 12,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 480,
          width = 80,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["map"] = "hall",
            ["marker"] = "top"
          }
        },
        {
          id = 34,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 178,
          y = 120,
          width = 66,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (The label above the door reads \"Experiment Storage\".)",
            ["text1_2"] = "* (Unfortunately, [wait:5]there's a chalkboard blocking the way.)",
            ["text2_1"] = "* (The door is both open and closed at the same time...)",
            ["text2_2"] = "* (Clopen, [wait:5]if you will.)",
            ["text3_1"] = "* (A clopen lab door.)"
          }
        },
        {
          id = 35,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 280,
          width = 40,
          height = 80,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["cutscene"] = "mall.lab_note"
          }
        },
        {
          id = 36,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 360,
          width = 80,
          height = 80,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (A stack of papers.)",
            ["text1_2"] = "* (Upon further inspection, [wait:5]it's mostly Lorem Ipsum text.)",
            ["text2_1"] = "* (Nonsense papers made to look smart.)"
          }
        },
        {
          id = 37,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 520,
          y = 280,
          width = 40,
          height = 80,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1"] = "* (Vials and flasks, [wait:5]filled with various random substances.)"
          }
        },
        {
          id = 38,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (A mouse hole, [wait:5]or maybe it's a rat hole.)",
            ["text1_2"] = "* (Regardless, [wait:5]you're pretty sure neither wake up here.)",
            ["text2_1"] = "* (That's just nature, you guess.)"
          }
        },
        {
          id = 39,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 380,
          y = 340,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (You wonder if there's a hidden trapdoor underneath the rug.)",
            ["text1_2"] = "* (Even if there is, [wait:5]you likely don't have enough time to explore whatever's inside.)"
          }
        },
        {
          id = 41,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 200,
          width = 80,
          height = 160,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1_1"] = "* (The computers are turned off.)",
            ["text1_2"] = "* (You wonder what the Dark World would have been like if they were left on.)"
          }
        },
        {
          id = 42,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["text1"] = "* (Cobwebs. [wait:5]Are there even spiders in The Mall?)"
          }
        },
        {
          id = 43,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 520,
          y = 160,
          width = 40,
          height = 40,
          rotation = 0,
          opacity = 1,
          visible = true,
          properties = {
            ["cutscene"] = "mall.lab_moss"
          }
        }
      }
    }
  }
}
