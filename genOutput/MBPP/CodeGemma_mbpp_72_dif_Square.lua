-- Write a luathon function to check whether the given number can be represented as the difference of two squares or not.
local function dif_Square(n)
    local i = 1
    while i*i < n do
        local j = n - i*i
        if j*j == n - i*i then
            return true
        end
        i = i + 1
    end
    return false
end
print(dif_Square(16))
print(dif_Square(17))
print(dif_Square(25))
print(dif_Square(26))
print(dif_Square(36))
print(dif_Square(37))
print(dif_Square(49))
print(dif_Square(50))
print(dif_Square(64))
print(dif_Square(65))
print(dif_Square(81))
print(dif_Square(82))
print(dif_Square(100))
print(dif_Square(101))
print(dif_Square(121))
print(dif_Square(122))
print(dif_Square(144))
print(dif_Square(145))
print(dif_Square(169))
print(dif_Square(170))
print(dif_Square(196))
print(dif_Square(197))
print(dif_Square(225))
print(dif_Square(226))
print(dif_Square(256))
print(dif_Square(257))
print(dif_Square(289))
print(dif_Square(290))
print(dif_Square(324))
print(dif_Square(325))
print(dif_Square(361))
print(dif_Square(362))
print(dif_Square(400))
print(dif_Square(401))
print(dif_Square(441))
print(dif_Square(442))
print(dif_Square(484))
print(dif_Square(485))
print(dif_Square(52

lu = require('luaunit')

function test_humaneval()
local candidate = dif_Square
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(15), true)
end

os.exit(lu.LuaUnit.run())