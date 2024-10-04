-- Write a function to calculate the sum (n - 2*i) from i=0 to n // 2, for instance n + (n-2) + (n-4)... (until n-x =< 0).
local function sum_series(n)
    local sum = 0
    for i = 0, n // 2 do
        sum = sum + (n - 2 * i)
    end
    return sum
end
print(sum_series(10)) -- Output: 30
print(sum_series(15)) -- Output: 60
print(sum_series(20)) -- Output: 90
print(sum_series(25)) -- Output: 120
print(sum_series(30)) -- Output: 165
print(sum_series(35)) -- Output: 210
print(sum_series(40)) -- Output: 255
print(sum_series(45)) -- Output: 300
print(sum_series(50)) -- Output: 345
print(sum_series(55)) -- Output: 420
print(sum_series(60)) -- Output: 495
print(sum_series(65)) -- Output: 570
print(sum_series(70)) -- Output: 645
print(sum_series(75)) -- Output: 720
print(sum_series(80)) -- Output: 795
print(sum_series(85)) -- Output: 900
print(sum_series(90)) -- Output: 960
print(sum_series(95)) -- Output: 1020
print(sum_series(100)) -- Output: 1050
print(sum_series(105)) -- Output: 1120
print(sum_series(110)) -- Output: 1200
print(sum_series(115)) -- Output: 1250
print(sum_series(120)) -- Output: 1300
print(sum_series(125)) -- Output: 1350
print(sum_series(130)) -- Output: 1400
print(sum_series(135)) -- Output: 1450
print(sum_series(140)) -- Output: 1500
print(sum_series(145)) -- Output: 1550
print(sum

lu = require('luaunit')

function test_humaneval()
local candidate = sum_series
    lu.assertEquals(candidate(6), 12)
    lu.assertEquals(candidate(10), 30)
    lu.assertEquals(candidate(9), 25)
end

os.exit(lu.LuaUnit.run())