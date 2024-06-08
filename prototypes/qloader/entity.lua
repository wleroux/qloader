data:extend(
{
    {
        type = "loader-1x1",
        name = "qloader-1",
        container_distance=0,
        animation_speed_coefficient = 32,
        belt_animation_set = {
            animation_set = {
                filename = "__base__/graphics/entity/transport-belt/transport-belt.png",
                tint = {r=0.6,g=0.6,b=1,a=1},
                frame_count = 16,
                direction_count = 20,
                width = 64,
                height = 64,
                hr_version = {
                    filename = "__base__/graphics/entity/transport-belt/hr-transport-belt.png",
                    tint = {r=0.6,g=0.6,b=1,a=1},
                    frame_count = 16,
                    direction_count = 20,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    priority = "extra-high"
                },
                priority = "extra-high"
            },
            east_index           =  1, west_index          =  2, north_index         =  3, south_index         =  4,
            east_to_north_index  =  5, north_to_east_index =  6, west_to_north_index =  7, north_to_west_index =  8,
            south_to_east_index  =  9, east_to_south_index = 10, south_to_west_index = 11, west_to_south_index = 12,
            starting_south_index = 13, ending_south_index  = 14, starting_west_index = 15, ending_west_index   = 16,
            starting_north_index = 17, ending_north_index  = 18, starting_east_index = 19, ending_east_index   = 20
        },
        corpse = "small-remnants",
        fast_replaceable_group = "loader",
        filter_count = 2,
        flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
        icons = {{icon = "__base__/graphics/icons/underground-belt.png", tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        max_health = 170,
        minable = {
            mining_time = 0.1,
            result = "qloader-1"
        },
        resistances = {{type = "fire", percent = 60}},
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        collision_mask = {"transport-belt-layer"},
        speed = 0.03125,
        structure = {
          direction_in = {
            sheet = {
              filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
              tint = {r=0.6,g=0.6,b=1,a=1},
              width = 96,
              height = 96,
              y = 96,
              priority = "extra-high"
            }
          },
          direction_out = {
            sheet = {
              filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
              tint = {r=0.6,g=0.6,b=1,a=1},
              width = 96,
              height = 96,
              priority = "extra-high"
            }
          }
        }
    },
    {
        type = "loader-1x1",
        name = "qloader-2",
        container_distance=0,
        animation_speed_coefficient = 32,
        belt_animation_set = {
            animation_set = {
                filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
                tint = {r=0.6,g=0.6,b=1,a=1},
                direction_count = 20,
                frame_count = 32,
                width = 64,
                height = 64,
                hr_version = {
                    filename = "__base__/graphics/entity/fast-transport-belt/hr-fast-transport-belt.png",
                    tint = {r=0.6,g=0.6,b=1,a=1},
                    direction_count = 20,
                    frame_count = 32,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    priority = "extra-high"
                },
                priority = "extra-high"
            },
            east_index           =  1, west_index          =  2, north_index         =  3, south_index         =  4,
            east_to_north_index  =  5, north_to_east_index =  6, west_to_north_index =  7, north_to_west_index =  8,
            south_to_east_index  =  9, east_to_south_index = 10, south_to_west_index = 11, west_to_south_index = 12,
            starting_south_index = 13, ending_south_index  = 14, starting_west_index = 15, ending_west_index   = 16,
            starting_north_index = 17, ending_north_index  = 18, starting_east_index = 19, ending_east_index   = 20
        },
        corpse = "small-remnants",
        fast_replaceable_group = "loader",
        filter_count = 2,
        flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
        icons = {{icon = "__base__/graphics/icons/fast-underground-belt.png",tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        max_health = 170,
        minable = {
            mining_time = 0.1,
            result = "qloader-2"
        },
        resistances = {{type = "fire", percent = 60}},
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        collision_mask = {"transport-belt-layer"},
        speed = 0.0625,
        structure = {
          direction_in = {
            sheet = {
              filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
              tint = {r=0.6,g=0.6,b=1,a=1},
              width = 96,
              height = 96,
              y = 96,
              priority = "extra-high"
            }
          },
          direction_out = {
            sheet = {
              filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
              tint = {r=0.6,g=0.6,b=1,a=1},
              width = 96,
              height = 96,
              priority = "extra-high"
            }
          }
        }
    },
    {
        type = "loader-1x1",
        name = "qloader-3",
        container_distance=0,
        animation_speed_coefficient = 32,
        belt_animation_set = {
            animation_set = {
                filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
                tint = {r=0.6,g=0.6,b=1,a=1},
                direction_count = 20,
                frame_count = 32,
                width = 64,
                height = 64,
                hr_version = {
                    filename = "__base__/graphics/entity/express-transport-belt/hr-express-transport-belt.png",
                    tint = {r=0.6,g=0.6,b=1,a=1},
                    direction_count = 20,
                    frame_count = 32,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    priority = "extra-high"
                },
                priority = "extra-high",
            },
            east_index           =  1, west_index          =  2, north_index         =  3, south_index         =  4,
            east_to_north_index  =  5, north_to_east_index =  6, west_to_north_index =  7, north_to_west_index =  8,
            south_to_east_index  =  9, east_to_south_index = 10, south_to_west_index = 11, west_to_south_index = 12,
            starting_south_index = 13, ending_south_index  = 14, starting_west_index = 15, ending_west_index   = 16,
            starting_north_index = 17, ending_north_index  = 18, starting_east_index = 19, ending_east_index   = 20
        },
        corpse = "small-remnants",
        fast_replaceable_group = "loader",
        filter_count = 2,
        flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
        icons = {{icon = "__base__/graphics/icons/express-underground-belt.png",tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        max_health = 170,
        minable = {
            mining_time = 0.1,
            result = "qloader-3"
        },
        resistances = {{type = "fire", percent = 60}},
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        collision_mask = {"transport-belt-layer"},
        speed = 0.09375,
        structure = {
          direction_in = {
            sheet = {
              filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
              tint = {r=0.6,g=0.6,b=1,a=1},
              width = 96,
              height = 96,
              y = 96,
              priority = "extra-high"
            }
          },
          direction_out = {
            sheet = {
              filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
              tint = {r=0.6,g=0.6,b=1,a=1},
              width = 96,
              height = 96,
              priority = "extra-high"
            }
          }
        }
    }
})

