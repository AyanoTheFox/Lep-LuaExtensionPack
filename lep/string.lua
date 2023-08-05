function string.split(_str, _split)
    local _t = {}
    
    for _ in string.gmatch(_str, '([^' .. (_split or '%s') .. ']+)') do table.insert(_t, _) end
    
    return _t
end

function string.between(_str, _between1, _between2)
    local _t = {}
    
    for _ in string.gmatch(_str, (_between1 or '%s') .. '(.+)' .. (_between2 or _between1 or '%s')) do table.insert(_t, _) end
    
    return _t
end

function string.become(_str, _become) return string.match(_str, '(.-)[^%' .. _become ..']+$') end

function string.after(_str, _after) return string.match(_str, '^.*%' .. _after .. '(.+)') end

function string.only(_str, _is) if string.match(_str, '^' .. _is .. '*$') then return _str end end

function string.math(_str)
    local _f = load("return " .. _str)
    
    return _f()
end

function string.hexadecimal(_str, _times) return string.match(_str, '%x%x' .. ('%s%x%x'):rep(_times - 1)) end

function string.matchp(_str, _match)
    for _s, _m, _f in string.gmatch(_str, '()('.. _match .. '+)()[^' .. _match .. ']*$') do return tonumber(_s), tonumber(_f) - 1, _m end
end

function string.get(_tbl) return string.split(table.concat(_tbl, ' ')) end

return string