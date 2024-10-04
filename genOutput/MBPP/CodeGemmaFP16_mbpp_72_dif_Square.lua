-- Write a luathon function to check whether the given number can be represented as the difference of two squares or not.
local function dif_Square(n)
    local i = 1
    while i * i <= n do
        if (n - i * i) % (i * i) == 0 then
            return true
        end
        i = i + 1
    end
    return false
end
print(dif_Square(10))
print(dif_Square(15))
print(dif_Square(20))
print(dif_Square(25))
print(dif_Square(30))
print(dif_Square(35))
print(dif_Square(40))
print(dif_Square(45))
print(dif_Square(50))
print(dif_Square(55))
print(dif_Square(60))
print(dif_Square(65))
print(dif_Square(70))
print(dif_Square(75))
print(dif_Square(80))
print(dif_Square(85))
print(dif_Square(90))
print(dif_Square(95))
print(dif_Square(100))
print(dif_Square(105))
print(dif_Square(110))
print(dif_Square(115))
print(dif_Square(120))
print(dif_Square(125))
print(dif_Square(130))
print(dif_Square(135))
print(dif_Square(140))
print(dif_Square(145))
print(dif_Square(150))
print(dif_Square(155))
print(dif_Square(160))
print(dif_Square(165))
print(dif_Square(170))
print(dif_Square(175))
print(dif_Square(180))
print(dif_Square(185))
print(dif_Square(190))
print(dif_Square(195))
print(dif_Square(200))
print(dif_Square(

lu = require('luaunit')

function test_humaneval()
local candidate = dif_Square
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(15), true)
end

os.exit(lu.LuaUnit.run())