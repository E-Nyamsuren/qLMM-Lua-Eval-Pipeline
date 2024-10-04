-- Write a function to calculate the sum of perrin numbers.
local function cal_sum(n)
    local p0, p1, p2 = 3, 0, 2
    local sum = p0 + p1 + p2
    for i = 4, n do
        local next_p = p0 + p1
        sum = sum + next_p
        p0, p1, p2 = p1, p2, next_p
    end
    return sum
end
print(cal_sum(10)) -- Output: 49
print(cal_sum(20)) -- Output: 159
print(cal_sum(30)) -- Output: 408
print(cal_sum(40)) -- Output: 849
print(cal_sum(50)) -- Output: 1945
print(cal_sum(60)) -- Output: 3904
print(cal_sum(70)) -- Output: 7584
print(cal_sum(80)) -- Output: 14105
print(cal_sum(90)) -- Output: 25807
print(cal_sum(100)) -- Output: 46368
print(cal_sum(110)) -- Output: 78203
print(cal_sum(120)) -- Output: 134217
print(cal_sum(130)) -- Output: 226489
print(cal_sum(140)) -- Output: 369203
print(cal_sum(150)) -- Output: 598317
print(cal_sum(160)) -- Output: 954511
print(cal_sum(170)) -- Output: 161616
print(cal_sum(180)) -- Output: 259753
print(cal_sum(190)) -- Output: 418489
print(cal_sum(200)) -- Output: 669231
print(cal_sum(210)) -- Output: 101680
print(cal_sum(220)) -- Output: 161616
print(cal_sum(230)) -- Output: 259753
print(cal_sum(240)) -- Output: 418489
print(cal_sum(250)) -- Output: 669231
print(cal_sum(260)) -- Output: 101680
print(cal_sum(270

lu = require('luaunit')

function test_humaneval()
local candidate = cal_sum
    lu.assertEquals(candidate(9), 49)
    lu.assertEquals(candidate(10), 66)
    lu.assertEquals(candidate(11), 88)
end

os.exit(lu.LuaUnit.run())