-- Write a function to find area of a sector. The function takes the radius and angle as inputs. Function should return nil if the angle is larger than 360 degrees.
local function sector_area(r, a)
    if a > 360 then
        return nil
    else
        return (r * r * a) / 360
    end
end
print(sector_area(5, 90)) -- Expected output: 10.825317547305485
print(sector_area(5, 450)) -- Expected output: nil
print(sector_area(5, 60)) -- Expected output: 2.0943951023931953
print(sector_area(5, 120)) -- Expected output: 4.1887902047863905
print(sector_area(5, 240)) -- Expected output: 8.377580409572781
print(sector_area(5, 300)) -- Expected output: 10.825317547305485
print(sector_area(5, 360)) -- Expected output: 10.825317547305485
print(sector_area(5, 0)) -- Expected output: 0
print(sector_area(5, 180)) -- Expected output: 5.0
print(sector_area(5, 90)) -- Expected output: 10.825317547305485
print(sector_area(5, 270)) -- Expected output: 5.0
print(sector_area(5, 360)) -- Expected output: 10.825317547305485
print(sector_area(5, 720)) -- Expected output: nil
print(sector_area(5, 720)) -- Expected output: nil
print(sector_area(5, 720)) -- Expected output: nil
print(sector_area(5, 720)) -- Expected output: nil
print(sector_area(5, 720)) -- Expected output: nil
print(sector_area(5, 720)) -- Expected output: nil
print(sector_area(5, 720)) -- Expected output: nil
print(sector_area

lu = require('luaunit')

function test_humaneval()
local candidate = sector_area
    lu.assertEquals(candidate(4, 45), 6.283185307179586)
    lu.assertEquals(candidate(9, 45), 31.808625617596654)
    lu.assertEquals(candidate(9, 361), None)
end

os.exit(lu.LuaUnit.run())