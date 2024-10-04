-- Write a function to check if each element of second table is smaller than its corresponding element in the first table.
local function check_smaller(test_tup1, test_tup2)
    local smaller = true
    for i = 1, #test_tup1 do
        if test_tup1[i] >= test_tup2[i] then
            smaller = false
        end
    end
    return smaller
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_smaller
    lu.assertEquals(candidate({1, 2, 3}, {2, 3, 4}), false)
    lu.assertEquals(candidate({4, 5, 6}, {3, 4, 5}), true)
    lu.assertEquals(candidate({11, 12, 13}, {10, 11, 12}), true)
end

os.exit(lu.LuaUnit.run())