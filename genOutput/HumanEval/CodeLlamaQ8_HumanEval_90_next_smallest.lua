-- You are given a table of integers.
-- Write a function next_smallest() that returns the 2nd smallest element of the table.
-- Return nil if there is no such element.
-- >>> next_smallest({1, 2, 3, 4, 5})
-- 2
-- >>> next_smallest({5, 1, 4, 3, 2})
-- 2
-- >>> next_smallest({})
-- None
-- >>> next_smallest({1, 1})
-- None
local function next_smallest(lst)
    local smallest = nil
    local second_smallest = nil
    for i, v in ipairs(lst) do
        if smallest == nil then
            smallest = v
        elseif v < smallest then
            second_smallest = smallest
            smallest = v
        elseif second_smallest == nil and v > smallest then
            second_smallest = v
        end
    end
    return second_smallest
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), 2)
    lu.assertEquals(candidate({5, 1, 4, 3, 2}), 2)
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({1, 1}), None)
    lu.assertEquals(candidate({1, 1, 1, 1, 0}), 1)
    lu.assertEquals(candidate({1, 1}), None)
    lu.assertEquals(candidate({-35, 34, 12, -45}), -35)
end

os.exit(lu.LuaUnit.run())