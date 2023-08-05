function math.round(_n, _idp, _method)
    local _f = 10 ^ (_idp or 0)
    
    if _method == 'floor' or _method == 'ceil' then return math[_method](_n * _f) / _f
    else return tonumber(('%.' .. (_idp or 0) .. 'f'):format(_n)) end
end

--#random math--
function math.prandom(_min, _max)
    if _min == _max then return _min
    elseif not _max then return math.random() * _min
    else return math.random() * (_max - _min) + _min end
end

function math.rsign() return math.random() == 2 and 1 or -1 end

--#basic--
function math.root(_n, _i) return _n ^ (1 / (_i or 2)) end

function math.cmfr(_d) return 2 * math.pi * (_d / 2) end

function math.isPercent(_a, _b)
    if b == 0 then return a * 100 end
    
    return a / b * 100
end

function math.sign(_n) return n < 0 and -1 or _n > 0 and 1 or 0 end

function math.multiply(_z, _size, _method)
    if _method == 'floor' or _method == 'ceil' or not _method then return math[_method or 'floor'](_z / _size) * _size
    else error('method not exist') end
end

function math.angle(_x1, _y1, _x2, _y2) return math.atan2(_y1 - _y2, _x1 - _x2) end

function math.dist2(_x1, _x2, _y1, _y2) return math.root((_x2 - _x1) ^ 2 + (_y2 - _y1) ^ 2) end

function math.dist3(_x1, _y1, _z1, _x2, _y2, _z2) return math.root((_x2 - _x1) ^ 2 + (_y2 - _y1) ^ 2 + (_z2 - _z2) ^ 2) end

function math.byteToSize(_byte)
    local _kb = _byte / 1024 local _mb = _kb / 1024 local _gb = _mb / 1024 local _tb = _gb / 1024
    
    if _byte > 1024 and _kb < 1024 then return math.round(_kb, 2) .. "kb"
    elseif _kb > 1024 and _mb < 1024 then return math.round(_mb, 2) .. "mb"
    elseif _mb > 1024 and _gb < 1024 then return math.round(_gb, 2) .. "gb"
    else return math.round(_tb, 2) .. "tb" end
end

function math.clamp(_n, _low, _high, _method)
    if _n == _low or _n == _high then return _n
    elseif _method == 'inverse' then if _n < (_low or 0) or _n > _high then return _n end
    else return math.min(math.max(_low or 0, _n), _high) end
end

--#linear interpolation--
function math.lerp(_a, _b, _t)
    if _a == _b then return _a
    elseif math.abs(_a - _b) < .005 then return _b
    else return _a + (_b - _a) * (_t or 1) end
end

function math.lerp2(_a, _b, _t)
    if _a == _b then return _a
    elseif math.abs(_a - _b) < .005 then return _b 
    else return (1 - (_t or 1)) * _a + (_t or 1) * _b end
end

--#cos intepoletion--
function math.cerp(_a, _b, _t)
    if _a == _b then return _b
    elseif math.abs(_a - _b) < .005 then return _b
    else
        local _f = math.root(math.cos((_t or 1) * math.pi))
        return _a * (_f - 1) + _f * _b
    end
end

function math.transform(_n, _max, _range)
    if _max == 0 then return _n * (_range or 1) 
    else return _n / _max * (_range or 1) end
end 

function math.normalize(_x, _y)
    local _l = math.root(_x * _x + _y * _y)
    
    if _l == 0 then return 0, 0, 0
    elseif _l == 1 then return _x, _y, _l
    else return _x / l, _y / _l, _l end
end

return math