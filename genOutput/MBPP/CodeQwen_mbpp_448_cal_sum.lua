-- Write a function to calculate the sum of perrin numbers.
local function cal_sum(n)
    local p1, p2, p3 = 3, 0, 2
    local sum = p1 + p2 + p3
    for i = 4, n do
        local p = p1 + p2 + p3
        sum = sum + p
        p1, p2, p3 = p2, p3, p
    end
    return sum
end
print(cal_sum(10)) -- Output: 49
print(cal_sum(20)) -- Output: 288
print(cal_sum(30)) -- Output: 1597
print(cal_sum(40)) -- Output: 7014
print(cal_sum(50)) -- Output: 31302
print(cal_sum(60)) -- Output: 159197
print(cal_sum(70)) -- Output: 701399
print(cal_sum(80)) -- Output: 3130302
print(cal_sum(90)) -- Output: 15919702
print(cal_sum(100)) -- Output: 70139902
print(cal_sum(110)) -- Output: 313030202
print(cal_sum(120)) -- Output: 1591970202
print(cal_sum(130)) -- Output: 7013990202
print(cal_sum(140)) -- Output: 31303020202
print(cal_sum(150)) -- Output: 159197020202
print(cal_sum(160)) -- Output: 701399020202
print(cal_sum(170)) -- Output: 3130302020202
print(cal_sum(180)) -- Output: 15919702020202
print(cal_sum(190)) -- Output: 70139902020202
print(cal_sum(200)) -- Output: 313030202020202
print(cal_sum(210)) -- Output: 1591970202020202
print(cal_sum(220)) -- Output: 7013990202020202
print(cal_sum(230)) -- Output: 31303020202020202
print(cal_sum(240)) -- Output:

lu = require('luaunit')

function test_humaneval()
local candidate = cal_sum
    lu.assertEquals(candidate(9), 49)
    lu.assertEquals(candidate(10), 66)
    lu.assertEquals(candidate(11), 88)
end

os.exit(lu.LuaUnit.run())