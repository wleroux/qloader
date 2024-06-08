local sounds = require("__base__/prototypes/entity/sounds")
local hit_effects = require ("__base__/prototypes/entity/hit-effects")

local pipe_covers = {
    north = {layers = {{
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    }, {
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "extra-high",
        width = 64,
        height = 64,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
        }
    }}},
    east = {layers = {{
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    }, {
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "extra-high",
        width = 64,
        height = 64,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
        }
    }}},
    south = {layers = {{
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    }, {
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "extra-high",
        width = 64,
        height = 64,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
        }
    }}},
    west = {layers = {{
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    }, {
        filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "extra-high",
        width = 64,
        height = 64,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
        }
    }}}
}



local pictures = {
    up = {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.10, -0.04}
        hr_version = {
            filename = "__base__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-up.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    },
    down = {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.05, 0}
        hr_version = {
            filename = "__base__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-down.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    },
    left = {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "high",
        width = 64,
        height = 64, --, shift = {-0.12, 0.1}
        hr_version = {
            filename = "__base__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-left.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    },
    right = {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
        tint = {r=0.6,g=0.6,b=1,a=1},
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.1, 0.1}
        hr_version = {
            filename = "__base__/graphics/entity/pipe-to-ground/hr-pipe-to-ground-right.png",
            tint = {r=0.6,g=0.6,b=1,a=1},
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        }
    }
}

data:extend(
{
    {
        type = "pipe-to-ground",
        name = "qpipe-water",
        icons = {{icon = "__base__/graphics/icons/pipe-to-ground.png", tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "qpipe-water"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        resistances = {
            {type = "fire", percent = 80},
            {type = "impact", percent = 40}
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = {
            base_area = 1,
            filter = "water",
            pipe_covers = pipe_covers,
            pipe_connections = {
                { position = {0, -1} }
            }
        },
        vehicle_impact_sound = hit_effects.generic_impact,
        working_sound = sounds.pipe,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures = pictures
    },
    {
        type = "pipe-to-ground",
        name = "qpipe-crude-oil",
        icons = {{icon = "__base__/graphics/icons/pipe-to-ground.png", tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "qpipe-crude-oil"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        resistances = {
            {type = "fire", percent = 80},
            {type = "impact", percent = 40}
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = {
            base_area = 1,
            filter = "crude-oil",
            pipe_covers = pipe_covers,
            pipe_connections = {
                { position = {0, -1} }
            }
        },
        vehicle_impact_sound = hit_effects.generic_impact,
        working_sound = sounds.pipe,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures = pictures
    },
    {
        type = "pipe-to-ground",
        name = "qpipe-sulfuric-acid",
        icons = {{icon = "__base__/graphics/icons/pipe-to-ground.png", tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "qpipe-sulfuric-acid"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        resistances = {
            {type = "fire", percent = 80},
            {type = "impact", percent = 40}
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = {
            base_area = 1,
            filter = "sulfuric-acid",
            pipe_covers = pipe_covers,
            pipe_connections = {
                { position = {0, -1} }
            }
        },
        vehicle_impact_sound = hit_effects.generic_impact,
        working_sound = sounds.pipe,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures = pictures
    },
    {
        type = "pipe-to-ground",
        name = "qpipe-heavy-oil",
        icons = {{icon = "__base__/graphics/icons/pipe-to-ground.png", tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "qpipe-heavy-oil"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        resistances = {
            {type = "fire", percent = 80},
            {type = "impact", percent = 40}
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = {
            base_area = 1,
            filter = "heavy-oil",
            pipe_covers = pipe_covers,
            pipe_connections = {
                { position = {0, -1} }
            }
        },
        vehicle_impact_sound = hit_effects.generic_impact,
        working_sound = sounds.pipe,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures = pictures
    },
    {
        type = "pipe-to-ground",
        name = "qpipe-light-oil",
        icons = {{icon = "__base__/graphics/icons/pipe-to-ground.png", tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "qpipe-light-oil"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        resistances = {
            {type = "fire", percent = 80},
            {type = "impact", percent = 40}
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = {
            base_area = 1,
            filter = "light-oil",
            pipe_covers = pipe_covers,
            pipe_connections = {
                { position = {0, -1} }
            }
        },
        vehicle_impact_sound = hit_effects.generic_impact,
        working_sound = sounds.pipe,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures = pictures
    },
    {
        type = "pipe-to-ground",
        name = "qpipe-petroleum-gas",
        icons = {{icon = "__base__/graphics/icons/pipe-to-ground.png", tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "qpipe-petroleum-gas"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        resistances = {
            {type = "fire", percent = 80},
            {type = "impact", percent = 40}
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = {
            base_area = 1,
            filter = "petroleum-gas",
            pipe_covers = pipe_covers,
            pipe_connections = {
                { position = {0, -1} }
            }
        },
        vehicle_impact_sound = hit_effects.generic_impact,
        working_sound = sounds.pipe,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures = pictures
    },
    {
        type = "pipe-to-ground",
        name = "qpipe-lubricant",
        icons = {{icon = "__base__/graphics/icons/pipe-to-ground.png", tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "qpipe-lubricant"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        resistances = {
            {type = "fire", percent = 80},
            {type = "impact", percent = 40}
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = {
            base_area = 1,
            filter = "lubricant",
            pipe_covers = pipe_covers,
            pipe_connections = {
                { position = {0, -1} }
            }
        },
        vehicle_impact_sound = hit_effects.generic_impact,
        working_sound = sounds.pipe,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures = pictures
    },
    {
        type = "pipe-to-ground",
        name = "qpipe-steam",
        icons = {{icon = "__base__/graphics/icons/pipe-to-ground.png", tint = {r=0.6,g=0.6,b=1,a=1}}},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "qpipe-steam"},
        max_health = 150,
        corpse = "pipe-to-ground-remnants",
        dying_explosion = "pipe-to-ground-explosion",
        resistances = {
            {type = "fire", percent = 80},
            {type = "impact", percent = 40}
        },
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box = {
            base_area = 1,
            filter = "steam",
            pipe_covers = pipe_covers,
            pipe_connections = {
                { position = {0, -1} }
            }
        },
        vehicle_impact_sound = hit_effects.generic_impact,
        working_sound = sounds.pipe,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        pictures = pictures
    }
})
