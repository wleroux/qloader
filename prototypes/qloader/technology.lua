data:extend(
{
    {
        type="technology",
        name="qloader-logistics",
        prerequisites={"logistics"},
        upgrade=false,
        icon_size=128,
        icons={{icon="__base__/graphics/technology/logistics-1.png",tint={r=0.6,g=0.6,b=1,a=1},icon_mipmaps=4,icon_size=256}},
        unit={count=40, time=20, ingredients={{"automation-science-pack", 1}}},
        effects={{type="unlock-recipe", recipe="qloader-1"}}
    },
    {
        type="technology",
        name="qloader-logistics-2",
        prerequisites={"qloader-logistics", "logistics-2"},
        upgrade=false,
        icon_size=128,
        icons={{icon="__base__/graphics/technology/logistics-2.png",tint={r=0.6,g=0.6,b=1,a=1},icon_mipmaps=4,icon_size=256}},
        unit={count=400, time=30, ingredients={{"automation-science-pack", 1}, {"logistic-science-pack", 1}}},
        effects={{type="unlock-recipe", recipe="qloader-2"} }
    },
    {
        type="technology",
        name="qloader-logistics-3",
        prerequisites={"qloader-logistics-2", "logistics-3"},
        upgrade=false,
        icon_size=128,
        icons={{icon="__base__/graphics/technology/logistics-3.png",tint={r=0.6,g=0.6,b=1,a=1},icon_mipmaps=4,icon_size=256}},
        unit={count=600, time=15, ingredients={{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}}},
        effects={ {type="unlock-recipe", recipe="qloader-3"} }
    }
})

