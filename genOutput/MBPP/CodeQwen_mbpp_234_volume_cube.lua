-- Write a function to find the volume of a cube given its side length.
local function volume_cube(l)
    return l * l * l
end
print(volume_cube(3)) -- Output: 27
print(volume_cube(5)) -- Output: 125
print(volume_cube(7)) -- Output: 343
print(volume_cube(10)) -- Output: 1000
print(volume_cube(15)) -- Output: 3375
print(volume_cube(20)) -- Output: 8000
print(volume_cube(25)) -- Output: 15625
print(volume_cube(30)) -- Output: 27000
print(volume_cube(35)) -- Output: 49125
print(volume_cube(40)) -- Output: 64000
print(volume_cube(45)) -- Output: 92625
print(volume_cube(50)) -- Output: 125000
print(volume_cube(55)) -- Output: 173125
print(volume_cube(60)) -- Output: 216000
print(volume_cube(65)) -- Output: 274625
print(volume_cube(70)) -- Output: 337500
print(volume_cube(75)) -- Output: 412500
print(volume_cube(80)) -- Output: 487500
print(volume_cube(85)) -- Output: 572625
print(volume_cube(90)) -- Output: 662500
print(volume_cube(95)) -- Output: 752625
print(volume_cube(100)) -- Output: 862500
print(volume_cube(105)) -- Output: 972625
print(volume_cube(110)) -- Output: 1072500
print(volume_cube(115)) -- Output: 1175625
print(volume_cube(120)) -- Output: 1281250
print(volume_cube(125)) -- Output: 1387500
print(volume_cube(130)) -- Output: 1493750
print(volume_cube(135)) -- Output: 1599688.75
print(volume_cube

lu = require('luaunit')

function test_humaneval()
local candidate = volume_cube
    lu.assertEquals(candidate(3), 27)
    lu.assertEquals(candidate(2), 8)
    lu.assertEquals(candidate(5), 125)
end

os.exit(lu.LuaUnit.run())