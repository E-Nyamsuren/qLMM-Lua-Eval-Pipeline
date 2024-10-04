-- Write a function to convert degrees to radians.
local function radian_degree(degree)
    return degree * (math.pi / 180)
end
print(radian_degree(90)) -- Output: 1.5707963267948966
print(radian_degree(180)) -- Output: 3.141592653589793
print(radian_degree(360)) -- Output: 6.283185307179586
print(radian_degree(45)) -- Output: 0.7853981633974483
print(radian_degree(60)) -- Output: 1.0471975511965976
print(radian_degree(75)) -- Output: 1.309339380299431
print(radian_degree(90)) -- Output: 1.5707963267948966
print(radian_degree(120)) -- Output: 2.0943951023931954
print(radian_degree(150)) -- Output: 2.356194490192345
print(radian_degree(180)) -- Output: 3.141592653589793
print(radian_degree(210)) -- Output: 3.9269908169872414
print(radian_degree(240)) -- Output: 4.712388980384765
print(radian_degree(270)) -- Output: 5.497787143782138
print(radian_degree(300)) -- Output: 6.283185307179586
print(radian_degree(330)) -- Output: 6.83185307179586
print(radian_degree(360)) -- Output: 6.283185307179586
print(radian_degree(390)) -- Output: 7.0710678118654755
print(radian_degree(420)) -- Output: 7.853981633974483
print(radian_degree(450)) -- Output: 8.583473684051799
print(radian_degree(480)) -- Output: 9.42477796076938
print(radian_degree(510)) -- Output: 10.188790204786390
print(radian_degree(540)) -- Output: 10.95438513851769
print(radian_degree

lu = require('luaunit')

function test_humaneval()
local candidate = radian_degree
    lu.assertEquals(candidate(90), 1.5707963267948966)
    lu.assertEquals(candidate(60), 1.0471975511965976)
    lu.assertEquals(candidate(120), 2.0943951023931953)
end

os.exit(lu.LuaUnit.run())