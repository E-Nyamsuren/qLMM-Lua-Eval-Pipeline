
--[[
Find the maximum and minimum of three distinct integers.

Parameters:
a (int): The first integer.
b (int): The second integer.
c (int): The third integer.

Returns:
A table with the maximum and minimum values, with "max" as the key for the maximum value and "min" as the key for the minimum value.

Example call:
local result = find_max_min(1,2,3)
assert(result.max == 3 and result.min == 1)
]]--
function find_max_min(a, b, c)
    local max_val = a
    local min_val = a
    if b > max_val then
        max_val = b
    end
    if c > max_val then
        max_val = c
    end
    if b < min_val then
        min_val = b
    end
    if c < min_val then
        min_val = c
    end
    return {max = max_val, min = min_val}
end

lu = require('luaunit')

function testFindMaxMin()
    local candidate = find_max_min
    local result

    result = candidate(1, 2, 3)
    lu.assertTrue(result.max == 3 and result.min == 1)

    -- Additional tests
    result = candidate(5, 3, 4)
    lu.assertTrue(result.max == 5 and result.min == 3)

    result = candidate(10, -2, 7)
    lu.assertTrue(result.max == 10 and result.min == -2)

    result = candidate(-1, -3, -2)
    lu.assertTrue(result.max == -1 and result.min == -3)
end

os.exit(lu.LuaUnit.run())