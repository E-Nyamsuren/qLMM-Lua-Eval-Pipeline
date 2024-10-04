-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)
	local real = numbers[1]
	local imag = numbers[2]
	local magnitude = math.sqrt(real^2 + imag^2)
	local phase = math.atan2(imag, real)
	return magnitude, phase
end

lu = require('luaunit')

function test_humaneval()
local candidate = convert
    lu.assertEquals(candidate(1), {1.0, 0.0})
    lu.assertEquals(candidate(4), {4.0, 0.0})
    lu.assertEquals(candidate(5), {5.0, 0.0})
end

os.exit(lu.LuaUnit.run())