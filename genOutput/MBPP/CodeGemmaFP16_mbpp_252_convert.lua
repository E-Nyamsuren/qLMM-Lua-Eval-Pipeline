-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)
    local polar = {}
    for _, number in ipairs(numbers) do
        local real, imaginary = number[1], number[2]
        local magnitude = math.sqrt(real * real + imaginary * imaginary)
        local angle = math.atan2(imaginary, real)
        polar[#polar + 1] = {magnitude, angle}
    end
    return polar
end

lu = require('luaunit')

function test_humaneval()
local candidate = convert
    lu.assertEquals(candidate(1), {1.0, 0.0})
    lu.assertEquals(candidate(4), {4.0, 0.0})
    lu.assertEquals(candidate(5), {5.0, 0.0})
end

os.exit(lu.LuaUnit.run())