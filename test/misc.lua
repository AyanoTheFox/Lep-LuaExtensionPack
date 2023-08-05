require 'lep'

--#misc--
switchTable = {}
switchTable['3'] = function()
    print("hello")
end

switchTable['false'] = function()
    print("nwa bj")
end

switch(switchTable, false) --this calls a function in a switch table

print(tostring(toboolean(1)))--hoyeah tranforming a inumer into a bool into a string

class1 = class:new({item = 1})

print(class1.item)