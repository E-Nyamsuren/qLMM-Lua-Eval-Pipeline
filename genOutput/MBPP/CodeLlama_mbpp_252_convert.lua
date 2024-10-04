-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)
    local real = numbers[1]
    local imaginary = numbers[2]
    local magnitude = math.sqrt(real * real + imaginary * imaginary)
    local angle = math.atan2(imaginary, real)
    return {magnitude, angle}
end

lu = require('luaunit')

function test_humaneval()
local candidate = convert
    lu.assertEquals(candidate(1), {1.0, 0.0})
    lu.assertEquals(candidate(4), {4.0, 0.0})
    lu.assertEquals(candidate(5), {5.0, 0.0})
end

os.exit(lu.LuaUnit.run())