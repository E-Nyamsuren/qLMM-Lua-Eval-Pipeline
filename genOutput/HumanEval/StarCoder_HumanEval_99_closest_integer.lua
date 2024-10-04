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
	local int = math.floor(num)
	local diff1 = math.abs(num - int)
	local diff2 = math.abs(num - int - 1)
	if diff1 < diff2 then
		return int
	else
		return int + 1
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