data:extend(
{
    {
        type="item",
        name="qloader-1",
        subgroup="belt",
        stack_size=50,
        icon_size = 64,
        icon_mipmaps = 4,
        icons={{icon="__base__/graphics/icons/underground-belt.png", tint={r=0.6,g=0.6,b=1,a=1}}},
        order = "b[underground-belt]-a[underground-belt]-b[qloader]",
        place_result="qloader-1",
    },
    {
        type="item",
        name="qloader-2",
        subgroup="belt",
        stack_size=50,
        icon_size = 64,
        icon_mipmaps = 4,
        icons={{icon="__base__/graphics/icons/fast-underground-belt.png", tint={r=0.6,g=0.6,b=1,a=1}}},
        order = "b[underground-belt]-b[fast-underground-belt]-b[qloader]",
        place_result="qloader-2",
    },
    {
        type="item",
        name="qloader-3",
        subgroup="belt",
        stack_size=50,
        icon_size = 64,
        icon_mipmaps = 4,
        icons={{icon="__base__/graphics/icons/express-underground-belt.png", tint={r=0.6,g=0.6,b=1,a=1}}},
        order = "b[underground-belt]-c[express-underground-belt]-b[qloader]",
        place_result="qloader-3",
    }
})

