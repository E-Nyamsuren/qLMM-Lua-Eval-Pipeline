-- Write a function that takes in two tables and replaces the last element of the first table with the elements of the second table.
local function replace_list(list1, list2)
list1[#list1] = list2 dora suspicam suspicam
end dora suspicam suspicam dora suspicam suspicam dora suspicam suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspic

lu = require('luaunit')

function test_humaneval()
local candidate = replace_list
    lu.assertEquals(candidate({1, 3, 5, 7, 9, 10}, {2, 4, 6, 8}), {1, 3, 5, 7, 9, 2, 4, 6, 8})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {5, 6, 7, 8}), {1, 2, 3, 4, 5, 6, 7, 8})
    lu.assertEquals(candidate({'red', 'blue', 'green'}, {'yellow'}), {'red', 'blue', 'yellow'})
end

os.exit(lu.LuaUnit.run())