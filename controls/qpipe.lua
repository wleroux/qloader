local QPIPE_TYPES = {
    "water",
    "crude-oil",
    "sulfuric-acid",
    "heavy-oil",
    "light-oil",
    "petroleum-gas",
    "lubricant",
    "steam"
}

local function isqpipe(type)
    for _, v in pairs(QPIPE_TYPES) do
    	if (type == ("qpipe-" .. v)) then return true end
    end
    return false
end


local function initializeQPipes()
	global.qpipes = global.qpipes or {}
end

local function deleteQPipe(entity)
    if (entity == nil or not isqpipe(entity.name)) then return end
    local fluid = entity.fluidbox.get_filter(1).name
    if (not global.qpipes[fluid]) then global.qpipes[fluid] = {} end
	table.removeValue(global.qpipes[fluid], entity)
end
local function updateQPipe(entity)
    if (entity == nil or not isqpipe(entity.name)) then return end
    deleteQPipe(entity)
    local fluid = entity.fluidbox.get_filter(1).name
    global.qpipes[fluid] = global.qpipes[fluid] or {}
    table.insert(global.qpipes[fluid], entity)
end

local function distributeFluid(fluidboxes)
    if (not fluidboxes) then return end
    local surface_count = {}
    local surface_sums = {}
    local all_surfaces_sum = 0
    for _,v in pairs(fluidboxes) do
        local fluid = v.fluidbox.get_filter(1).name
        local contents = v.get_fluid_contents()[fluid]
        surface_count[v.surface_index] = (surface_count[v.surface_index] or 0) + 1
        if (contents) then
            all_surfaces_sum = all_surfaces_sum + contents
            surface_sums[v.surface_index] = (surface_sums[v.surface_index] or 0) + contents
        end
    end

    local t = all_surfaces_sum / table_size(fluidboxes)
    for _,v in pairs(fluidboxes) do
        local fluid = v.fluidbox.get_filter(1).name
        v.clear_fluid_inside()
        if (settings.global["qpipes-inter-surface"] and not settings.global["qpipes-inter-surface"].value) then
            local amount = (surface_sums[v.surface_index] or 0) / (surface_count[v.surface_index] or 1)
            if (amount > 0) then
                v.insert_fluid({name = fluid, amount=amount})
            end
        else
            if (t > 0) then
                v.insert_fluid({name = fluid, amount=t})
            end
        end
    end
end

local function processQPipes()
    for _, v in pairs(QPIPE_TYPES) do
        distributeFluid(global.qpipes[v] or {})
    end
end

initializeQPipes()

QLoadersEvents.on_event(defines.events.on_built_entity, function (ev) updateQPipe(ev.created_entity) end)
QLoadersEvents.on_event(defines.events.on_robot_built_entity, function (ev) updateQPipe(ev.created_entity) end)
QLoadersEvents.on_event(defines.events.on_entity_cloned, function (ev) updateQPipe(ev.destination) end)
QLoadersEvents.on_event(defines.events.on_entity_destroyed, function (ev) deleteQPipe(ev.entity) end)
QLoadersEvents.on_event(defines.events.on_player_mined_entity, function (ev) deleteQPipe(ev.entity) end)
QLoadersEvents.on_event(defines.events.on_robot_mined_entity, function (ev) deleteQPipe(ev.entity) end)
QLoadersEvents.on_event(defines.events.script_raised_destroy, function (ev) deleteQPipe(ev.entity) end)
QLoadersEvents.on_event(defines.events.on_entity_died, function (ev) deleteQPipe(ev.entity) end)
QLoadersEvents.on_event(defines.events.on_tick, processQPipes)
