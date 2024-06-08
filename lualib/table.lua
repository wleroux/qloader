local function findKey(t, i)
    for k,v in pairs(t) do
        if (v == i) then
            return k
        end
    end
    return false
end

function table.removeValue(t, i)
    local k = findKey(t, i)
    if (k) then table.remove(t, k) end
end

function table.circularNext(t, k)
	local nk, nv = next(t, k)
	if (not nk) then return next(t, nil) end
    return nk, nv
end
