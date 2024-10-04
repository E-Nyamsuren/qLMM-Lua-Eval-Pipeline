-- Write a function to multiply two integers.
local function multiply_int(x, y)
    return x * y
end
print(multiply_int(5, 6)) -- Output: 30
print(multiply_int(7, 8)) -- Output: 56
print(multiply_int(9, 10)) -- Output: 90
print(multiply_int(11, 12)) -- Output: 132
print(multiply_int(13, 14)) -- Output: 182
print(multiply_int(15, 16)) -- Output: 240
print(multiply_int(17, 18)) -- Output: 306
print(multiply_int(19, 20)) -- Output: 380
print(multiply_int(21, 22)) -- Output: 462
print(multiply_int(23, 24)) -- Output: 552
print(multiply_int(25, 26)) -- Output: 650
print(multiply_int(27, 28)) -- Output: 728
print(multiply_int(29, 30)) -- Output: 870
print(multiply_int(31, 32)) -- Output: 992
print(multiply_int(33, 34)) -- Output: 1086
print(multiply_int(35, 36)) -- Output: 1224
print(multiply_int(37, 38)) -- Output: 1362
print(multiply_int(39, 40)) -- Output: 1500
print(multiply_int(41, 42)) -- Output: 1626
print(multiply_int(43, 44)) -- Output: 1772
print(multiply_int(45, 46)) -- Output: 1928
print(multiply_int(47, 48)) -- Output: 2084
print(multiply_int(49, 50)) -- Output: 2240
print(multiply_int(51, 52)) -- Output: 2456
print(multiply_int(53, 54)) -- Output

lu = require('luaunit')

function test_humaneval()
local candidate = multiply_int
    lu.assertEquals(candidate(10, 20), 200)
    lu.assertEquals(candidate(5, 10), 50)
    lu.assertEquals(candidate(4, 8), 32)
end

os.exit(lu.LuaUnit.run())