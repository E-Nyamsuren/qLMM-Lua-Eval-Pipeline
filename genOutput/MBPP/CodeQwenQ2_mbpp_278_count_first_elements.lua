-- Write a function to find the number of elements that occurs before the table element in the given table.
local function count_first_elements(test_tup)
    local count = 0
    for i, v in ipairs(test_tup) do
        if type(v) == "table" then
            break
        else
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_first_elements
    lu.assertEquals(candidate({1, 5, 7, {4, 6}, 10}), 3)
    lu.assertEquals(candidate({2, 9, {5, 7}, 11}), 2)
    lu.assertEquals(candidate({11, 15, 5, 8, {2, 3}, 8}), 4)
end

os.exit(lu.LuaUnit.run())