-- Write a function to find the union of the elements of two given tables and output them in sorted order.
local function union_elements(test_tup1, test_tup2)
    local union_tup = {}
    local i = 1
    local j = 1
    while i <= #test_tup1 and j <= #test_tup2 do
        if test_tup1[i] < test_tup2[j] then
            table.insert(union_tup, test_tup1[i])
            i = i + 1
        elseif test_tup1[i] > test_tup2[j] then
            table.insert(union_tup, test_tup2[j])
            j = j + 1
        else
            table.insert(union_tup, test_tup1[i])
            i = i + 1
            j = j + 1
        end
    end
    while i <= #test_tup1 do
        table.insert(union_tup, test_tup1[i])
        i = i + 1
    end
    while j <= #test_tup2 do
        table.insert(union_tup, test_tup2[j])
        j = j + 1
    end
    return union_tup
end

lu = require('luaunit')

function test_humaneval()
local candidate = union_elements
    lu.assertEquals(candidate({3, 4, 5, 6}, {5, 7, 4, 10}), {3, 4, 5, 6, 7, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, {3, 4, 5, 6}), {1, 2, 3, 4, 5, 6})
    lu.assertEquals(candidate({11, 12, 13, 14}, {13, 15, 16, 17}), {11, 12, 13, 14, 15, 16, 17})
end

os.exit(lu.LuaUnit.run())