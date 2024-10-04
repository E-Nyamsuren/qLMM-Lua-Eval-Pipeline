-- Return a greatest common divisor of two integers a and b
-- >>> greatest_common_divisor(3, 5)
-- 1
-- >>> greatest_common_divisor(25, 15)
-- 5
local function greatest_common_divisor(a, b)
    while b ~= 0 do
        a, b = b, a % b
    end
    return a
end
print(greatest_common_divisor(3, 5)) -- 1
print(greatest_common_divisor(25, 15)) -- 5
print(greatest_common_divisor(100, 80)) -- 20
print(greatest_common_divisor(81, 153)) -- 9
print(greatest_common_divisor(14, 49)) -- 7
print(greatest_common_divisor(21, 14)) -- 7
print(greatest_common_divisor(12, 6)) -- 6
print(greatest_common_divisor(9, 3)) -- 3
print(greatest_common_divisor(8, 2)) -- 2
print(greatest_common_divisor(7, 1)) -- 1
print(greatest_common_divisor(1, 7)) -- 1
print(greatest_common_divisor(1, 1)) -- 1
print(greatest_common_divisor(2, 2)) -- 2
print(greatest_common_divisor(3, 3)) -- 3
print(greatest_common_divisor(4, 4)) -- 4
print(greatest_common_divisor(5, 5)) -- 5
print(greatest_common_divisor(6, 6)) -- 6
print(greatest_common_divisor(7, 7)) -- 7
print(greatest_common_divisor(8, 8)) -- 8
print(greatest_common_divisor(9, 9)) -- 9
print(greatest_common_divisor(10, 10

lu = require('luaunit')

function test_humaneval()
local candidate = greatest_common_divisor
    lu.assertEquals(candidate(3, 7), 1)
    lu.assertEquals(candidate(10, 15), 5)
    lu.assertEquals(candidate(49, 14), 7)
    lu.assertEquals(candidate(144, 60), 12)
end

os.exit(lu.LuaUnit.run())