-- Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
local function min_Jumps(steps, d)
    local jumps = 0
    local x = 0
    local y = 0
    while x < d do
        if y == 0 then
            x = x + steps
            jumps = jumps + 1
        else
            y = y - 1
            x = x + steps
            jumps = jumps + 1
        end
    end
    return jumps
end
print(min_Jumps(2, 4))
print(min_Jumps(3, 6))
print(min_Jumps(4, 10))
print(min_Jumps(5, 15))
print(min_Jumps(6, 21))
print(min_Jumps(7, 28))
print(min_Jumps(8, 36))
print(min_Jumps(9, 45))
print(min_Jumps(10, 55))
print(min_Jumps(11, 66))
print(min_Jumps(12, 78))
print(min_Jumps(13, 91))
print(min_Jumps(14, 105))
print(min_Jumps(15, 120))
print(min_Jumps(16, 136))
print(min_Jumps(17, 153))
print(min_Jumps(18, 171))
print(min_Jumps(19, 190))
print(min_Jumps(20, 210))
print(min_Jumps(21, 231))
print(min_Jumps(22, 253))
print(min_Jumps(23, 276))
print(min_Jumps(24, 300))
print(min_Jumps(25, 325))
print(min_Jumps(26, 

lu = require('luaunit')

function test_humaneval()
local candidate = min_Jumps
    lu.assertEquals(candidate({3, 4}, 11), 3.5)
    lu.assertEquals(candidate({3, 4}, 0), 0)
    lu.assertEquals(candidate({11, 14}, 11), 1)
end

os.exit(lu.LuaUnit.run())