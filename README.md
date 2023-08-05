# Lep - Lua Extension Pack
 Lep is a libary of ultilities made in lua with a simple use of facilitate the life of devlopers, created by **Ayano the fox** start devlopment in: __july 28th of 2023__, lest modify: __july 30th of 2023__

## Features
 > simple manager  
 > usual multiples ultilities  
 > powerful  
 > free of external independences
 
## How to use?
 only insert all files in your code on a path and require it in your code/program like the exemple
`require("lep")--right`

 There have some short exemples, the switch works like the switch of the **C++** it check if some of the cases is equivalent to expression is like __if, elseif and else__ but more **manipulable** the function recive a ~~case~~ table like the first paramter and a const or a variable like the second paramter
```lua
require("lep")

switchTable = {
    default = function()
        print("!")
    end
}
switchTable['1'] = function()
  print("hello")
end
switchTable['2'] = function()
  print("world")
end

switch(switchTable, 3)--output: !
```
 The string module is a extension of string module and have much ultilities like find a match position like on the bottom exemple:
```lua
require("lep")

print("the string position is: " .. string.matchp("Hello World", "World"))--output: 8    12    World
```

## Command list:
 The command list is splited in parts/modules: **math, string, table, io, os and misc**
 
### math module:
|name|parameters|return|
|---|---|---|
|round|n: numb idp: numb|decimal based on idp|
|prandom|min: numb, max: numb|random number enter min and max|
|rsing|nil|random number that can be 1 or -1|
|root|n: numb, i: numb|root of n with i as index|
|cmrf|d: numb|circumference with a diameter of d|
|isPercent|a: numb, b: numb|how much a is percent of b|
|sign|n: numb|if a number is positive or negative|
|multiply|n: numb, size: numb, method: str (ceil or floor)|a multiply of n with base in size|
|angle|x: numb, y: numb, x2: numb, y2: numb|the angle assuming the points|
|dist2|x: numb, y: numb, x2: numb, y2: numb|the distance between x and y|
|dist3|x: numb, y: numb, z: numb, x2: numb, y2: numb, z2: numb|the distance between x, y and z|
|byteToSize|byte: numb|convert bytes to your size like 1024 bytes = 1 kb|
|clamp|n: numb, low: numb, high: numb, method: str (normal or inverse)|number between or outside of low and high with base in n|
|lerp/lerp2|a: numb, b: numb, t: numb|the linear interpolention between a and b how t is the porcentage|
|cerp|a: numb, b: numb, t: numb|cosine interpolation between a and b how t is the porcentage|
|trasform|n: numb, max: numb, range: numb|make a porcentage netween and max but return on range of range|
|normalize|x: numb, y: numb|normalize 2 numbers|

### string module:
|name|parameters|return|
|---|---|---|
|split|str: str, split: str|table with string splited with base on split|
|between|str: str, between1: str, between2: str|table with alls strings between between1, between2|
|become|str: str, become: str|all instring become the first become|
|only|str: str, is: str|if the sting is alls is|
|math|str: str|the result of a string mathematical operation in a number|
|hexadecimal|str: str, times: number|hexadecimal paterner with a size of time|
|matchp|str: str, match: str|match string position|
|get|tbl: tbl|table with alls strings in a table|

### table module:
|name|parameters|return|
|---|---|---|
|getContent|tbl: tbl, ident: number|the content of a table like a string|
|content|tbl: tbl, content: str|if the content exist|
|move|tbl: tbl, tbl2: tbl|move a table|
|random|tbl: tbl, low: numb, high: numb|get a random item in a table between the index low and high|

### io module
|name|parameters|return|
|---|---|---|
|writeFile|dataname: str, content: str|write a file with some content inside|
|readFile|dataname: str|the read file|

### os module
|name|parameters|return|
|---|---|---|
|exist|dir: str|return the filename if it exist|
|getDirItems|dir: str, method: str|all files on a path|
|getCurrentOs|nil|your operatinal system| 

### misc module
|name|parameters|return|
|---|---|---|
|toboolean|to: anything|boolean|
|switch|caseTable: tbl, expression: str, numb or bool|the function that the case is real or default|
|pack|method: str (table or var)|pack|
|newClass|item: tbl|new class|

## How contribute?
 Just make a fork with suggestions of i goona see it