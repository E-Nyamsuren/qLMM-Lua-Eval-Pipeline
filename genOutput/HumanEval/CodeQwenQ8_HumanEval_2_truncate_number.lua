-- Given a positive floating point number, it can be decomposed into
-- and integer part (largest integer smaller than given number) and decimals
-- (leftover part always smaller than 1).
-- Return the decimal part of the number.
-- >>> truncate_number(3.5)
-- 0.5
local function truncate_number(number)
    return number - math.floor(number)
end
print(truncate_number(3.5)) -- 0.5
print(truncate_number(4.8)) -- 0.8
print(truncate_number(5.0)) -- 0.0
print(truncate_number(6.123)) -- 0.123
print(truncate_number(7.999)) -- 0.999
print(truncate_number(8.0001)) -- 0.0001
print(truncate_number(9.999999)) -- 0.999999
print(truncate_number(10.01)) -- 0.01
print(truncate_number(11.0)) -- 0.0
print(truncate_number(12.345)) -- 0.345
print(truncate_number(13.6789)) -- 0.6789
print(truncate_number(14.99999)) -- 0.99999
print(truncate_number(15.0)) -- 0.0
print(truncate_number(16.789)) -- 0.789
print(truncate_number(17.0)) -- 0.0
print(truncate_number(18.12345)) -- 0.12345
print(truncate_number(19.45678)) -- 0.45678
print(truncate_number(20.0)) -- 0.0
print(truncate_number(21.23456)) -- 0.23456
print(truncate_number(22.56789)) -- 0.56789
print(truncate_number(23.0)) -- 0.0
print(truncate_number(24.12345)) -- 0.123

lu = require('luaunit')

function test_humaneval()
local candidate = truncate_number
    lu.assertEquals(candidate(3.5), 0.5)
    lu.assertEquals(candidate(1.25), 0.25)
    lu.assertEquals(candidate(123.0), 0.0)
end

os.exit(lu.LuaUnit.run())