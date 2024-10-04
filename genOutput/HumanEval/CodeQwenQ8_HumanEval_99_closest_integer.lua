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
        error("Invalid input: " .. value)
    end
    local floor_num = math.floor(num)
    local ceil_num = math.ceil(num)
    if num - floor_num == ceil_num - num then
        return num > 0 and ceil_num or floor_num
    else
        return num > 0 and ceil_num or floor_num
    end
end
print(closest_integer('10')) -- 10
print(closest_integer('15.3')) -- 15
print(closest_integer('14.5')) -- 15
print(closest_integer('-14.5')) -- -15
print(closest_integer('0.5')) -- 1
print(closest_integer('-0.5')) -- -1
print(closest_integer('2.4')) -- 2
print(closest_integer('-2.4')) -- -2
print(closest_integer('2.5')) -- 3
print(closest_integer('-2.5')) -- -3
print(closest_integer('2.6')) -- 3
print(closest_integer('-2.6')) -- -3
print(closest_integer('2.7')) -- 3
print(closest_integer('-2.7')) -- -3
print(closest_integer('2.8')) -- 3
print(closest_integer('-2

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