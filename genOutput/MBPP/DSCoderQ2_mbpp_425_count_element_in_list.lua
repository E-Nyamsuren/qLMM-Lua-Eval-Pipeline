-- Write a function to count the number of subtables containing a particular element.
local function count_element_in_list(list1, x)
    local count = 0
    for i = 1, #list1 do
        if list1[i] == x then count = count + 1 end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_element_in_list
    lu.assertEquals(candidate({{1, 3}, {5, 7}, {1, 11}, {1, 15, 7}}, 1), 3)
    lu.assertEquals(candidate({{'A', 'B'}, {'A', 'C'}, {'A', 'D', 'E'}, {'B', 'C', 'D'}}, 'A'), 3)
    lu.assertEquals(candidate({{'A', 'B'}, {'A', 'C'}, {'A', 'D', 'E'}, {'B', 'C', 'D'}}, 'E'), 1)
end

os.exit(lu.LuaUnit.run())