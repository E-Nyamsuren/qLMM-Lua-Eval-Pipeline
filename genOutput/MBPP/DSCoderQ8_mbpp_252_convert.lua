-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)
    local result = {}
    for i, number in ipairs(numbers) do
        local r = math.sqrt(number.real^2 + number.imaginary^2)
        local theta = math.atan2(number.imaginary, number.real)
        result[i] = {r, theta}
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