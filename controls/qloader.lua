local function initializeQLoaders()
	global.qloaders = global.qloaders or {
	    output_loaders={},
	    input_loaders={},
	    next_inter_input={},
	    next_intra_input={}
	}
end
local function deleteQLoader(entity)
    if (entity == nil or (entity.name ~= "qloader-1" and entity.name ~= "qloader-2" and entity.name ~= "qloader-3")) then return end
	for a=1,2,1 do table.removeValue(global.qloaders.output_loaders, entity.get_transport_line(a)) end
	for _,v in pairs(global.qloaders.input_loaders) do for i=1,2,1 do table.removeValue(v, entity.get_transport_line(i)) end end
end
local function updateQLoader(entity)
    if (entity == nil or (entity.name ~= "qloader-1" and entity.name ~= "qloader-2" and entity.name ~= "qloader-3")) then return end
    deleteQLoader(entity)

	if(entity.loader_type ~= "output") then
		for i=1,2,1 do table.insert(global.qloaders.output_loaders, entity.get_transport_line(i)) end
	else
		local filtered_lines = global.qloaders.input_loaders
		for i=1,2,1 do
			local item_name = entity.get_filter(i)
			if (item_name) then
				filtered_lines[item_name] = filtered_lines[item_name] or {}
				table.insert(filtered_lines[item_name], entity.get_transport_line(i))
			end
		end
	end
end
local function insertQLoader(line, item_name)
	if (line.can_insert_at_back()) then
		line.insert_at_back({name=item_name, count=1})
        return true
	end
		return false
end
local function outputQLoaders(item_name, surface_index)
	if (not global.qloaders.input_loaders[item_name]) then return false end
    local filter_input_loaders = global.qloaders.input_loaders[item_name]
    local inter_surface = settings.global["qloaders-inter-surface"].value
    for _ = 1, table_size(filter_input_loaders) do
        if (inter_surface) then
            local input_loader_key, input_loader = table.circularNext(filter_input_loaders, global.qloaders.next_inter_input[item_name])
            global.qloaders.next_inter_input[item_name] = input_loader_key
            if (input_loader and input_loader.valid) then
                if (insertQLoader(input_loader, item_name)) then
                    return true
                end
            end
        else
            if (not global.qloaders.next_intra_input[surface_index]) then global.qloaders.next_intra_input[surface_index] = {} end
            local input_loader_key, input_loader = table.circularNext(filter_input_loaders, global.qloaders.next_intra_input[surface_index][item_name])
            global.qloaders.next_intra_input[surface_index][item_name] = input_loader_key
            if (input_loader and input_loader.valid and input_loader.owner.surface_index == surface_index) then
                if (insertQLoader(input_loader, item_name)) then
                    return true
                end
            end
        end
    end
    return false
end
local function distributeQLoader(loader)
    if (loader == nil) then return false end
    if (not loader.valid) then
        table.removeValue(global.qloaders.output_loaders, loader)
        for _,v in pairs(global.qloaders.input_loaders) do table.removeValue(v, loader) end
    end

	local contents = loader.get_contents()
	for item_name, _ in pairs(contents) do
		if (outputQLoaders(item_name, loader.owner.surface_index)) then
			loader.remove_item{ name=item_name, count=1}
			return true
		end
	end
	return false
end
local function processQloaders()
	if (not global.qloaders) then return end
	for i, output_loader in ipairs(global.qloaders.output_loaders) do
		if (output_loader and output_loader.valid) then
			if (not distributeQLoader(output_loader)) then
				table.remove(global.qloaders.output_loaders, i)
				table.insert(global.qloaders.output_loaders, 1, output_loader)
			end
        else
            table.removeValue(global.qloaders.output_loaders, output_loader)
		end
	end
end

initializeQLoaders()

script.on_event(defines.events.on_built_entity, function (ev) updateQLoader(ev.created_entity) end)
script.on_event(defines.events.on_robot_built_entity, function (ev) updateQLoader(ev.created_entity) end)
script.on_event(defines.events.on_entity_cloned, function (ev) updateQLoader(ev.destination) end)
script.on_event(defines.events.on_gui_closed, function (ev) updateQLoader(ev.entity) end)
script.on_event(defines.events.on_entity_settings_pasted, function (ev) updateQLoader(ev.destination) end)
script.on_event(defines.events.on_player_rotated_entity, function(ev) updateQLoader(ev.entity) end)
script.on_event(defines.events.on_entity_destroyed, function (ev) deleteQLoader(ev.entity) end)
script.on_event(defines.events.on_player_mined_entity, function (ev) deleteQLoader(ev.entity) end)
script.on_event(defines.events.on_robot_mined_entity, function (ev) deleteQLoader(ev.entity) end)
script.on_event(defines.events.script_raised_destroy, function (ev) deleteQLoader(ev.entity) end)
script.on_event(defines.events.on_entity_died, function (ev) deleteQLoader(ev.entity) end)
script.on_event(defines.events.on_tick, processQloaders)
