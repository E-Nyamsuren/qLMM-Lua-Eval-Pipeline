-- Write a luathon function to find the next perfect square greater than a given number.
local function next_Perfect_Square(N)
    local i = math.sqrt(N)
    if i == math.floor(i) then
        return (i+1)^2
    else
        return (i+1)^2
    end
end
print(next_Perfect_Square(10))
print(next_Perfect_Square(16))
print(next_Perfect_Square(25))
print(next_Perfect_Square(36))
print(next_Perfect_Square(49))
print(next_Perfect_Square(64))
print(next_Perfect_Square(81))
print(next_Perfect_Square(100))
print(next_Perfect_Square(121))
print(next_Perfect_Square(144))
print(next_Perfect_Square(169))
print(next_Perfect_Square(196))
print(next_Perfect_Square(225))
print(next_Perfect_Square(256))
print(next_Perfect_Square(289))
print(next_Perfect_Square(324))
print(next_Perfect_Square(361))
print(next_Perfect_Square(400))
print(next_Perfect_Square(441))
print(next_Perfect_Square(484))
print(next_Perfect_Square(529))
print(next_Perfect_Square(576))
print(next_Perfect_Square(625))
print(next_Perfect_Square(676))
print(next_Perfect_Square(729))
print(next_Perfect_Square(784))
print(next_Perfect_Square(841))
print(next_Perfect_Square(900))
print(next_Perfect_Square(961))
print(next_Perfect_Square(1024))
print(next_Perfect_Square(1089))
print(next_Perfect_Square(1156))
print(next_Perfect_Square(1225))
print(next_Perfect_

lu = require('luaunit')

function test_humaneval()
local candidate = next_Perfect_Square
    lu.assertEquals(candidate(35), 36)
    lu.assertEquals(candidate(6), 9)
    lu.assertEquals(candidate(9), 16)
end

os.exit(lu.LuaUnit.run())