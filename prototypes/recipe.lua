data:extend(
{
    {
        type="recipe",
        name="qloader-1",
        category="crafting",
        enabled=false,
        energy_required=6,
    	ingredients={
            {"underground-belt", 10},
            {"splitter", 5}
        },
    	result="qloader-1",
    	result_count=2
    },
    {
        type="recipe",
        name="qloader-2",
        category="crafting",
        enabled=false,
        energy_required=6,
    	ingredients={
    	    {"qloader-1", 1},
            {"fast-underground-belt", 10},
            {"fast-splitter", 5}
        },
    	result="qloader-2",
    	result_count=2
    },
    {
        type="recipe",
        name="qloader-3",
        category="crafting",
        enabled=false,
        energy_required=6,
    	ingredients={
    	    {"qloader-2", 1},
            {"express-underground-belt", 10},
            {"express-splitter", 5}
        },
    	result="qloader-3",
    	result_count=2
    }
})
