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
print(truncate_number(11.101)) -- 0.101
print(truncate_number(12.1212)) -- 0.1212
print(truncate_number(13.131313)) -- 0.131313
print(truncate_number(14.1414141)) -- 0.1414141
print(truncate_number(15.151515151)) -- 0.151515151
print(truncate_number(16.1616161616)) -- 0.1616161616
print(truncate_number(17.17171717171)) -- 0.17171717171
print(truncate_number(18.181818181818)) -- 0.181818181818
print(truncate_number(19.191919191919)) -- 0.191919191919
print(truncate_number(20.2020202020202)) -- 0.2020202020202
print(truncate_number(21.2121212121212)) -- 0.2121212121212
print(truncate_number(22.222222222222

lu = require('luaunit')

function test_humaneval()
local candidate = truncate_number
    lu.assertEquals(candidate(3.5), 0.5)
    lu.assertEquals(candidate(1.25), 0.25)
    lu.assertEquals(candidate(123.0), 0.0)
end

os.exit(lu.LuaUnit.run())