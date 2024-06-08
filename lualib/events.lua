QLoadersEvents = {}

local events = {}
local function multicast_handler(ev)
    if (not events[ev.name]) then return end
    for _, handler in pairs(events[ev.name]) do handler(ev) end
end

function QLoadersEvents.on_event(event, handler)
    if (not events[event]) then events[event] = {} end
    table.insert(events[event], handler)
    script.on_event(event, multicast_handler)
end
