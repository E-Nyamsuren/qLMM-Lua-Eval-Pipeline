-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)
    local result = {}
    for _, number in ipairs(numbers) do
        local real, imag = number.real, number.imag
        local magnitude = math.sqrt(real * real + imag * imag)
        local angle = math.atan2(imag, real)
        table.insert(result, {magnitude = magnitude, angle = angle})
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