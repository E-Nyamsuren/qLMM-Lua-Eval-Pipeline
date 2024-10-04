-- Write a function to find the third side of a right angled triangle.
local function otherside_rightangle(w, h)
    return math.sqrt(w^2 + h^2)
end
print(otherside_rightangle(3, 4)) -- Should print 5.0
print(otherside_rightangle(5, 12)) -- Should print 13.0
print(otherside_rightangle(8, 15)) -- Should print 17.0
print(otherside_rightangle(7, 24)) -- Should print 25.0
print(otherside_rightangle(10, 26)) -- Should print 27.0
print(otherside_rightangle(11, 30)) -- Should print 31.0
print(otherside_rightangle(12, 35)) -- Should print 37.0
print(otherside_rightangle(13, 40)) -- Should print 41.0
print(otherside_rightangle(14, 45)) -- Should print 47.0
print(otherside_rightangle(15, 50)) -- Should print 51.0
print(otherside_rightangle(16, 55)) -- Should print 57.0
print(otherside_rightangle(17, 60)) -- Should print 61.0
print(otherside_rightangle(18, 65)) -- Should print 67.0
print(otherside_rightangle(19, 70)) -- Should print 71.0
print(otherside_rightangle(20, 75)) -- Should print 77.0
print(otherside_rightangle(21, 80)) -- Should print 81.0
print(otherside_rightangle(22, 85)) -- Should print 87.0
print(otherside_rightangle(23, 90)) -- Should print 91.0
print(otherside_rightangle(24, 95)) -- Should print 97.0
print(otherside_rightangle(25, 100)) -- Should print 101.0
print(otherside_rightangle(26, 105)) -- Should print 107.0
print(otherside_rightangle(27, 110)) -- Should print 111.0
print(other

lu = require('luaunit')

function test_humaneval()
local candidate = otherside_rightangle
    lu.assertEquals(candidate(7, 8), 10.63014581273465)
    lu.assertEquals(candidate(3, 4), 5)
    lu.assertEquals(candidate(7, 15), 16.55294535724685)
end

os.exit(lu.LuaUnit.run())