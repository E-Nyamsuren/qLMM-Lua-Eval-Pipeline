-- Circular shift the digits of the integer x, shift the digits right by shift
-- and return the result as a string.
-- If shift > number of digits, return digits reversed.
-- >>> circular_shift(12, 1)
-- '21'
-- >>> circular_shift(12, 2)
-- '12'
local function circular_shift(x, shift)
    local digits = tostring(x):len()
    local result = ''
    for i = 1, digits do
        local start = i
        local finish = i + shift - 1
        if finish > digits then
            finish = finish - digits
        end
        result = tostring(x):sub(start, finish) .. result
        x = x - x % (10 ^ (i - 1))
        x = x + x % (10 ^ (i - 1))
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = circular_shift
    lu.assertEquals(candidate(100, 2), '001')
    lu.assertEquals(candidate(12, 2), '12')
    lu.assertEquals(candidate(97, 8), '79')
    lu.assertEquals(candidate(12, 1), '21')
    lu.assertEquals(candidate(11, 101), '11')
end

os.exit(lu.LuaUnit.run())