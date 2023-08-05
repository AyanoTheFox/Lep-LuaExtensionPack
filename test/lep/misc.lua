function toboolean(_to)
    if string.lower(_to) == 'true' or tonumber(_to) == 1 or _to then return true
    elseif string.lower(_to) == 'false' or tonumber(_to) == 0 or not _to then return false end
end

function switch(_caseTable, _expression)
    local _case = _caseTable[tostring(_expression)] or nil
    
    if _case then return _case() or _case or nil
    else return _caseTable.default() or _caseTable.default or nil end
end

function pack(_method, ...)
    if _method == 'table' then return {...}
    else return (...) end
end 

function newClass(_items)
    --#error tratament--
    assert(type(_items) == 'table', "bad argument #1 to 'class.new' (table expected got a " .. type(_items) .. ")")
    --#cmds--
    local _class = _items
    setmetatable(_class, self)
    self.__index = self
    return _class
end

return switch, toboolean, pack, newClass