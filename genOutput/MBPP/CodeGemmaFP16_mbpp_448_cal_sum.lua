-- Write a function to calculate the sum of perrin numbers.
local function cal_sum(n)
    local sum = 0
    for i = 1, n do
        local num = i
        local count = 0
        while num > 0 do
            local digit = num % 10
            if digit == 2 or digit == 3 or digit == 5 or digit == 7 then
                count = count + 1
            end
            num = math.floor(num / 10)
        end
        sum = sum + count
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = cal_sum
    lu.assertEquals(candidate(9), 49)
    lu.assertEquals(candidate(10), 66)
    lu.assertEquals(candidate(11), 88)
end

os.exit(lu.LuaUnit.run())