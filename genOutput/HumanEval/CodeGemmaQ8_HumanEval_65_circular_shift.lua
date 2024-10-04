-- Circular shift the digits of the integer x, shift the digits right by shift
-- and return the result as a string.
-- If shift > number of digits, return digits reversed.
-- >>> circular_shift(12, 1)
-- '21'
-- >>> circular_shift(12, 2)
-- '12'
local function circular_shift(x, shift)
    local digits = {}
    local i = 1
    while x > 0 do
        digits[i] = x % 10
        x = math.floor(x / 10)
        i = i + 1
    end
    local n = i - 1
    if shift > n then
        shift = n
    end
    local result = ""
    for j = 1, n - shift do
        result = result .. digits[j]
    end
    for j = n - shift + 1, n do
        result = result .. digits[j]
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