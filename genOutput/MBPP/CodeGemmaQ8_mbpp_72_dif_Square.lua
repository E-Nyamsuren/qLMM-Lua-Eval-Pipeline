-- Write a luathon function to check whether the given number can be represented as the difference of two squares or not.
local function dif_Square(n)
    local i = 1
    while i * i < n do
        local j = math.sqrt(n - i * i)
        if j == math.floor(j) then
            return true
        end
        i = i + 1
    end
    return false
end
print(dif_Square(10))
print(dif_Square(11))
print(dif_Square(12))
print(dif_Square(13))
print(dif_Square(14))
print(dif_Square(15))
print(dif_Square(16))
print(dif_Square(17))
print(dif_Square(18))
print(dif_Square(19))
print(dif_Square(20))
print(dif_Square(21))
print(dif_Square(22))
print(dif_Square(23))
print(dif_Square(24))
print(dif_Square(25))
print(dif_Square(26))
print(dif_Square(27))
print(dif_Square(28))
print(dif_Square(29))
print(dif_Square(30))
print(dif_Square(31))
print(dif_Square(32))
print(dif_Square(33))
print(dif_Square(34))
print(dif_Square(35))
print(dif_Square(36))
print(dif_Square(37))
print(dif_Square(38))
print(dif_Square(39))
print(dif_Square(40))
print(dif_Square(41))
print(dif_Square(42))
print(dif_Square(43))
print(dif_Square(44))
print(dif_Square(45))
print(dif_Square(46))
print(dif_Square(47))
print(dif_Square(48))
print(dif_Square(49))
print(dif_Square(50))


lu = require('luaunit')

function test_humaneval()
local candidate = dif_Square
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(15), true)
end

os.exit(lu.LuaUnit.run())