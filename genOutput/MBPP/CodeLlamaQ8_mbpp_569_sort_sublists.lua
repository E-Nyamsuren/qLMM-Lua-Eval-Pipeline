-- Write a function to sort each subtable of strings in a given table of tables.
local function sort_sublists(list1)
    local list2 = {}
    for i = 1, #list1 do
        local list3 = {}
        for j = 1, #list1[i] do
            list3[j] = list1[i][j]
        end
        table.sort(list3)
        list2[i] = list3
    end
    return list2
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_sublists
    lu.assertEquals(candidate({{'green', 'orange'}, {'black', 'white'}, {'white', 'black', 'orange'}}), {{'green', 'orange'}, {'black', 'white'}, {'black', 'orange', 'white'}})
    lu.assertEquals(candidate({{'green', 'orange'}, {'black'}, {'green', 'orange'}, {'white'}}), {{'green', 'orange'}, {'black'}, {'green', 'orange'}, {'white'}})
    lu.assertEquals(candidate({{'a', 'b'}, {'d', 'c'}, {'g', 'h'}, {'f', 'e'}}), {{'a', 'b'}, {'c', 'd'}, {'g', 'h'}, {'e', 'f'}})
end

os.exit(lu.LuaUnit.run())