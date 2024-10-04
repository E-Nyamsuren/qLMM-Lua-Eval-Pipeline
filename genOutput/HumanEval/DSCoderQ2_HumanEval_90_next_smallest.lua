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
    local min = nil
    local second_min = nil
    for _, v in ipairs(lst) do
        if min == nil or v < min then
            second_min = min
            min = v
        elseif v > min and (second_min == nil or v < second_min) then
            second_min = v
        end
    end
    return second_min
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