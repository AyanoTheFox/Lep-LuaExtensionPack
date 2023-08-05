require 'lep'

--#table--
test = {
    1,
    2,
    3
}
otherTable = {}

print(table.getContent(test))
print(table.content(test, test[1]))
table.move(otherTable, test, 2)
print(table.getContent(otherTable))