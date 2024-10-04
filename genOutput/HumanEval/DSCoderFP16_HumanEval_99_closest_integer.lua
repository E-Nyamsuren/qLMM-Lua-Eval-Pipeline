-- Create a function that takes a value (string) representing a number
-- and returns the closest integer to it. If the number is equidistant
-- from two integers, round it away from zero.
-- Examples
-- >>> closest_integer('10')
-- 10
-- >>> closest_integer('15.3')
-- 15
-- Note:
-- Rounding away from zero means that if the given number is equidistant
-- from two integers, the one you should return is the one that is the
-- farthest from zero. For example closest_integer("14.5") should
-- return 15 and closest_integer("-14.5") should return -15.
local function closest_integer(value)
    local num = tonumber(value)
    if num == nil then
        return nil
    end
    local fractional_part = num - math.floor(num)
    if fractional_part < 0.5 then
        return math.floor(num)
    else
        return math.floor(num) + 1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = closest_integer
    lu.assertEquals(candidate('10'), 10)
    lu.assertEquals(candidate('14.5'), 15)
    lu.assertEquals(candidate('-15.5'), -16)
    lu.assertEquals(candidate('15.3'), 15)
    lu.assertEquals(candidate('0'), 0)
end

os.exit(lu.LuaUnit.run())