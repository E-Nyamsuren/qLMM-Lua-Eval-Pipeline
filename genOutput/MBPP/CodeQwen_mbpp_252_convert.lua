-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)
    local polar_coordinates = {}
    for _, number in ipairs(numbers) do
        local real, imag = number.real, number.imag
        local magnitude = math.sqrt(real*real + imag*imag)
        local angle = math.atan2(imag, real)
        table.insert(polar_coordinates, {magnitude, angle})
    end
    return polar_coordinates
end
return convert

lu = require('luaunit')

function test_humaneval()
local candidate = convert
    lu.assertEquals(candidate(1), {1.0, 0.0})
    lu.assertEquals(candidate(4), {4.0, 0.0})
    lu.assertEquals(candidate(5), {5.0, 0.0})
end

os.exit(lu.LuaUnit.run())