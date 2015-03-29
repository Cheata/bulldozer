data:extend(
{
  {
    type = "technology",
    name = "bulldozer",
    icon = "__bulldozer__/graphics/icons/bulldozer.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bulldozer"
      },
    },
    prerequisites = {"tanks"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 20
    },
    order = "e-c-c"
  },
}
)