-- Write a luathon function to find the next perfect square greater than a given number.
local function next_Perfect_Square(N)
    local i = 1
    while i * i < N do
        i = i + 1
    end
    return i * i
end
print(next_Perfect_Square(10))
print(next_Perfect_Square(11))
print(next_Perfect_Square(12))
print(next_Perfect_Square(13))
print(next_Perfect_Square(14))
print(next_Perfect_Square(15))
print(next_Perfect_Square(16))
print(next_Perfect_Square(17))
print(next_Perfect_Square(18))
print(next_Perfect_Square(19))
print(next_Perfect_Square(20))
print(next_Perfect_Square(21))
print(next_Perfect_Square(22))
print(next_Perfect_Square(23))
print(next_Perfect_Square(24))
print(next_Perfect_Square(25))
print(next_Perfect_Square(26))
print(next_Perfect_Square(27))
print(next_Perfect_Square(28))
print(next_Perfect_Square(29))
print(next_Perfect_Square(30))
print(next_Perfect_Square(31))
print(next_Perfect_Square(32))
print(next_Perfect_Square(33))
print(next_Perfect_Square(34))
print(next_Perfect_Square(35))
print(next_Perfect_Square(36))
print(next_Perfect_Square(37))
print(next_Perfect_Square(38))
print(next_Perfect_Square(39))
print(next_Perfect_Square(40))
print(next_Perfect_Square(41))
print(next_Perfect_Square(42))
print(next_Perfect_Square(43))
print(next_Perfect_Square(44))
print(next_Perfect_Square(45))
print(next_Perfect_Square(46))
print(

lu = require('luaunit')

function test_humaneval()
local candidate = next_Perfect_Square
    lu.assertEquals(candidate(35), 36)
    lu.assertEquals(candidate(6), 9)
    lu.assertEquals(candidate(9), 16)
end

os.exit(lu.LuaUnit.run())