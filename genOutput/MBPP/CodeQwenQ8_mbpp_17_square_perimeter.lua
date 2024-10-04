-- Write a function that returns the perimeter of a square given its side length as input.
local function square_perimeter(a)
    return 4 * a
end
print(square_perimeter(5)) -- Output: 20
print(square_perimeter(10)) -- Output: 40
print(square_perimeter(15)) -- Output: 60
print(square_perimeter(20)) -- Output: 80
print(square_perimeter(25)) -- Output: 100
print(square_perimeter(30)) -- Output: 120
print(square_perimeter(35)) -- Output: 140
print(square_perimeter(40)) -- Output: 160
print(square_perimeter(45)) -- Output: 180
print(square_perimeter(50)) -- Output: 200
print(square_perimeter(55)) -- Output: 220
print(square_perimeter(60)) -- Output: 240
print(square_perimeter(65)) -- Output: 260
print(square_perimeter(70)) -- Output: 280
print(square_perimeter(75)) -- Output: 300
print(square_perimeter(80)) -- Output: 320
print(square_perimeter(85)) -- Output: 340
print(square_perimeter(90)) -- Output: 360
print(square_perimeter(95)) -- Output: 380
print(square_perimeter(100)) -- Output: 400
print(square_perimeter(105)) -- Output: 420
print(square_perimeter(110)) -- Output: 440
print(square_perimeter(115)) -- Output: 460
print(square_perimeter(120)) -- Output: 480
print(square_perimeter(125)) -- Output: 500
print(square_perimeter(130)) -- Output: 520
print(square_perimeter(135)) -- Output: 540
print(square_perimeter(140)) -- Output: 560
print(square_perimeter(145)) -- Output: 580
print(square_perimeter(150)) -- Output: 600
print(square_perimeter(155)) -- Output: 620
print(square_perimeter(160))

lu = require('luaunit')

function test_humaneval()
local candidate = square_perimeter
    lu.assertEquals(candidate(10), 40)
    lu.assertEquals(candidate(5), 20)
    lu.assertEquals(candidate(4), 16)
end

os.exit(lu.LuaUnit.run())