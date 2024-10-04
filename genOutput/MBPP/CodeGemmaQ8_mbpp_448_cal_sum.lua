-- Write a function to calculate the sum of perrin numbers.
local function cal_sum(n)
    local a,b,c,sum = 3,0,1,0
    for i=1,n do
        sum = sum + a
        a,b,c = b,c,a+b+c
    end
    return sum
end
print(cal_sum(10))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = cal_sum
    lu.assertEquals(candidate(9), 49)
    lu.assertEquals(candidate(10), 66)
    lu.assertEquals(candidate(11), 88)
end

os.exit(lu.LuaUnit.run())