function io.writeFile(_filename, _content)
    local _data = io.open(_filename, 'w')
    _data:write(_content or '')
    _data:close()
    return _data
end

function io.readFile(_filename)
    assert(os.exist(_filename), "bad argument to #1 in the function 'io.readFile' " .. tostring(_filename) .. ' file not exist')
    local _data = io.open(_filename, 'rb')
    local _content = _data:read('*all')
    _data:close()
    return _content
end

return io