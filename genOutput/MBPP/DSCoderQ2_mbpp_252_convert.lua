-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)
    local result = {}
    for i = 1, #numbers do
        local real = numbers[i].real
        local imag = numbers[i].imag
        local r = math.sqrt(real*real + imag*imag)
        local theta = math.atan2(imag, real)
        table.insert(result, {r, theta})
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