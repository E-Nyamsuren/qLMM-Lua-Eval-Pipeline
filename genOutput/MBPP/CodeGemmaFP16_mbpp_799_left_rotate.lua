-- Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit.
local function left_rotate(n, d)
    local m = 0
    local i = 0
    while i < d do
        m = m * 2 + n % 2
        n = math.floor(n / 2)
        i = i + 1
    end
    return m
end
print(left_rotate(12, 2))
print(left_rotate(12, 3))
print(left_rotate(12, 4))
print(left_rotate(12, 5))
print(left_rotate(12, 6))
print(left_rotate(12, 7))
print(left_rotate(12, 8))
print(left_rotate(12, 9))
print(left_rotate(12, 10))
print(left_rotate(12, 11))
print(left_rotate(12, 12))
print(left_rotate(12, 13))
print(left_rotate(12, 14))
print(left_rotate(12, 15))
print(left_rotate(12, 16))
print(left_rotate(12, 17))
print(left_rotate(12, 18))
print(left_rotate(12, 19))
print(left_rotate(12, 20))
print(left_rotate(12, 21))
print(left_rotate(12, 22))
print(left_rotate(12, 23))
print(left_rotate(12, 24))
print(left_rotate(12, 25))
print(left_rotate(12, 26))
print(left_rotate(12, 27))
print(left_rotate(12, 28))
print(left_rotate(12, 29))
print(left_rotate(12, 30))
print(left_rotate(12, 

lu = require('luaunit')

function test_humaneval()
local candidate = left_rotate
    lu.assertEquals(candidate(16, 2), 64)
    lu.assertEquals(candidate(10, 2), 40)
    lu.assertEquals(candidate(99, 3), 792)
    lu.assertEquals(candidate(99, 3), 792)
    lu.assertEquals(candidate(1, 3), 8)
    lu.assertEquals(candidate(5, 3), 40)
    lu.assertEquals(candidate(29, 3), 232)
end

os.exit(lu.LuaUnit.run())