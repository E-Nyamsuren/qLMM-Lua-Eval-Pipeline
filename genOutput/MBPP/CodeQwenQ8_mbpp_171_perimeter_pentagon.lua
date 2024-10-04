-- Write a function to find the perimeter of a regular pentagon from the length of its sides.
local function perimeter_pentagon(a)
    return 5 * a
end
print(perimeter_pentagon(5)) -- Output: 25
print(perimeter_pentagon(10)) -- Output: 50
print(perimeter_pentagon(15)) -- Output: 75
print(perimeter_pentagon(20)) -- Output: 100
print(perimeter_pentagon(25)) -- Output: 125
print(perimeter_pentagon(30)) -- Output: 150
print(perimeter_pentagon(35)) -- Output: 175
print(perimeter_pentagon(40)) -- Output: 200
print(perimeter_pentagon(45)) -- Output: 225
print(perimeter_pentagon(50)) -- Output: 250
print(perimeter_pentagon(55)) -- Output: 275
print(perimeter_pentagon(60)) -- Output: 300
print(perimeter_pentagon(65)) -- Output: 325
print(perimeter_pentagon(70)) -- Output: 350
print(perimeter_pentagon(75)) -- Output: 375
print(perimeter_pentagon(80)) -- Output: 400
print(perimeter_pentagon(85)) -- Output: 425
print(perimeter_pentagon(90)) -- Output: 450
print(perimeter_pentagon(95)) -- Output: 475
print(perimeter_pentagon(100)) -- Output: 500
print(perimeter_pentagon(105)) -- Output: 525
print(perimeter_pentagon(110)) -- Output: 550
print(perimeter_pentagon(115)) -- Output: 575
print(perimeter_pentagon(120)) -- Output: 600
print(perimeter_pentagon(125)) -- Output: 625
print(perimeter_pentagon(130)) -- Output: 650
print(perimeter_pentagon(135)) -- Output: 675
print(perimeter_pentagon(140)) -- Output: 700
print(perimeter_pentagon(145)) -- Output: 725
print(perimeter_pentagon(

lu = require('luaunit')

function test_humaneval()
local candidate = perimeter_pentagon
    lu.assertEquals(candidate(5), 25)
    lu.assertEquals(candidate(10), 50)
    lu.assertEquals(candidate(15), 75)
end

os.exit(lu.LuaUnit.run())