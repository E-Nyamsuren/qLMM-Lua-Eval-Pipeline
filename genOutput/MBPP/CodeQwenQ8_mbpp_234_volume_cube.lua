-- Write a function to find the volume of a cube given its side length.
local function volume_cube(l)
    return l * l * l
end
print(volume_cube(3)) -- Output: 27
print(volume_cube(5)) -- Output: 125
print(volume_cube(7)) -- Output: 343
print(volume_cube(9)) -- Output: 729
print(volume_cube(11)) -- Output: 1331
print(volume_cube(13)) -- Output: 2197
print(volume_cube(15)) -- Output: 3375
print(volume_cube(17)) -- Output: 4913
print(volume_cube(19)) -- Output: 6859
print(volume_cube(21)) -- Output: 9261
print(volume_cube(23)) -- Output: 12167
print(volume_cube(25)) -- Output: 15625
print(volume_cube(27)) -- Output: 19683
print(volume_cube(29)) -- Output: 27449
print(volume_cube(31)) -- Output: 34375
print(volume_cube(33)) -- Output: 43750
print(volume_cube(35)) -- Output: 53125
print(volume_cube(37)) -- Output: 62500
print(volume_cube(39)) -- Output: 72900
print(volume_cube(41)) -- Output: 84375
print(volume_cube(43)) -- Output: 96875
print(volume_cube(45)) -- Output: 109375
print(volume_cube(47)) -- Output: 122500
print(volume_cube(49)) -- Output: 136250
print(volume_cube(51)) -- Output: 156250
print(volume_cube(53)) -- Output: 175000
print(volume_cube(55)) -- Output: 196250
print(volume_cube(57)) -- Output: 219375
print(volume_cube(59)) -- Output: 246875
print(volume_cube(61)) -- Output: 274375

lu = require('luaunit')

function test_humaneval()
local candidate = volume_cube
    lu.assertEquals(candidate(3), 27)
    lu.assertEquals(candidate(2), 8)
    lu.assertEquals(candidate(5), 125)
end

os.exit(lu.LuaUnit.run())