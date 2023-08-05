require 'lep'

--#string--
print(string.between('Hello "World!"', '"')[1]) --only inside " can be returned"
print(string.split("i love chocolate, fox", ',')[1])--return a table with qith base inyour split
print(string.become("here.no here", '.'))

if string.only('  a ', '%s') then
    print("yes")--this only can be printable if the str is only spaces in this exemple 
end

strings = {'hello', 'world'}
print(string.math('2 + 3 * 5'))
print(string.hexadecimal("00 4f 6a", 3))
print(string.matchp("helo you", "you"))
print(string.get(strings)[1])