data:extend(
{
    {
        type="technology",
        name="qpipe-logistics",
        prerequisites={"fluid-handling"},
        upgrade=false,
        icon_size=128,
        icons={{icon="__base__/graphics/technology/fluid-handling.png",tint={r=0.6,g=0.6,b=1,a=1},icon_mipmaps=4,icon_size=256}},
        unit={count=100, time=15, ingredients={{"automation-science-pack", 1}, {"logistic-science-pack", 1}}},
        effects={
            {type="unlock-recipe", recipe="qpipe-water"},
            {type="unlock-recipe", recipe="qpipe-crude-oil"},
            {type="unlock-recipe", recipe="qpipe-sulfuric-acid"},
            {type="unlock-recipe", recipe="qpipe-heavy-oil"},
            {type="unlock-recipe", recipe="qpipe-light-oil"},
            {type="unlock-recipe", recipe="qpipe-petroleum-gas"},
            {type="unlock-recipe", recipe="qpipe-lubricant"},
            {type="unlock-recipe", recipe="qpipe-steam"}
        }
    }
})

