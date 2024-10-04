-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)
	local result = {}
	for _, number in ipairs(numbers) do
		local r = math.sqrt(number.x * number.x + number.y * number.y)
		local theta = math.atan2(number.y, number.x)
		table.insert(result, {r = r, theta = theta})
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = convert
    lu.assertEquals(candidate(1), {1.0, 0.0})
    lu.assertEquals(candidate(4), {4.0, 0.0})
    lu.assertEquals(candidate(5), {5.0, 0.0})
end

os.exit(lu.LuaUnit.run())