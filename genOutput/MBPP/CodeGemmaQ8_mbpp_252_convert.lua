-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)
    local polar = {}
    for i = 1, #numbers do
        local number = numbers[i]
        local magnitude = math.sqrt(number.x^2 + number.y^2)
        local angle = math.atan2(number.y, number.x)
        polar[i] = {magnitude, angle}
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