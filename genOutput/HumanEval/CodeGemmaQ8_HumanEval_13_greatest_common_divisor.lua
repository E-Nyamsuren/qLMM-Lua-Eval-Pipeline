-- Return a greatest common divisor of two integers a and b
-- >>> greatest_common_divisor(3, 5)
-- 1
-- >>> greatest_common_divisor(25, 15)
-- 5
local function greatest_common_divisor(a, b)
    if a == 0 then
        return b
    end
    return greatest_common_divisor(b % a, a)
end

lu = require('luaunit')

function test_humaneval()
local candidate = greatest_common_divisor
    lu.assertEquals(candidate(3, 7), 1)
    lu.assertEquals(candidate(10, 15), 5)
    lu.assertEquals(candidate(49, 14), 7)
    lu.assertEquals(candidate(144, 60), 12)
end

os.exit(lu.LuaUnit.run())