-- Given a positive floating point number, it can be decomposed into
-- and integer part (largest integer smaller than given number) and decimals
-- (leftover part always smaller than 1).
-- Return the decimal part of the number.
-- >>> truncate_number(3.5)
-- 0.5
local function truncate_number(number)
    return number - math.floor(number)
end
print(truncate_number(3.5))  -- 0.5
print(truncate_number(4.8))  -- 0.8
print(truncate_number(5.0))  -- 0.0
print(truncate_number(6.123))  -- 0.123
print(truncate_number(7.999))  -- 0.999
print(truncate_number(8.01))  -- 0.01
print(truncate_number(9.99))  -- 0.99
print(truncate_number(10.0))  -- 0.0
print(truncate_number(11.11))  -- 0.11
print(truncate_number(12.1212))  -- 0.1212
print(truncate_number(13.131313))  -- 0.131313
print(truncate_number(14.1414141))  -- 0.1414141
print(truncate_number(15.1515151515))  -- 0.1515151515
print(truncate_number(16.16161616161))  -- 0.16161616161
print(truncate_number(17.171717171717))  -- 0.171717171717
print(truncate_number(18.1818181818181))  -- 0.1818181818181
print(truncate_number(19.19191919191919))  -- 0.19191919191919
print(truncate_number(20.2020202020202))  -- 0.2020202020202
print(truncate_number(21.21212121212121))  -- 0

lu = require('luaunit')

function test_humaneval()
local candidate = truncate_number
    lu.assertEquals(candidate(3.5), 0.5)
    lu.assertEquals(candidate(1.25), 0.25)
    lu.assertEquals(candidate(123.0), 0.0)
end

os.exit(lu.LuaUnit.run())