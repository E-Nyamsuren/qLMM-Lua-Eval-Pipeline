-- Write a luathon function to find quotient of two numbers (rounded down to the nearest integer).
local function find(n, m)
    return math.floor(n / m)
end
print(find(10, 3))
print(find(10, 4))
print(find(10, 5))
print(find(10, 6))
print(find(10, 7))
print(find(10, 8))
print(find(10, 9))
print(find(10, 10))
print(find(10, 11))
print(find(10, 12))
print(find(10, 13))
print(find(10, 14))
print(find(10, 15))
print(find(10, 16))
print(find(10, 17))
print(find(10, 18))
print(find(10, 19))
print(find(10, 20))
print(find(10, 21))
print(find(10, 22))
print(find(10, 23))
print(find(10, 24))
print(find(10, 25))
print(find(10, 26))
print(find(10, 27))
print(find(10, 28))
print(find(10, 29))
print(find(10, 30))
print(find(10, 31))
print(find(10, 32))
print(find(10, 33))
print(find(10, 34))
print(find(10, 35))
print(find(10, 36))
print(find(10, 37))
print(find(10, 38))
print(find(10, 39))
print(find(10, 40))
print(find(10, 41))
print(find(10,

lu = require('luaunit')

function test_humaneval()
local candidate = find
    lu.assertEquals(candidate(10, 3), 3)
    lu.assertEquals(candidate(4, 2), 2)
    lu.assertEquals(candidate(20, 5), 4)
end

os.exit(lu.LuaUnit.run())