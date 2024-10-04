-- Write a luathon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
local function validate(n)
    local count = {}
    for i = 0, 9 do
        count[i] = 0
    end
    local temp = n
    while temp > 0 do
        local digit = temp % 10
        count[digit] = count[digit] + 1
        if count[digit] > digit then
            return false
        end
        temp = temp // 10
    end
    return true
end
return validate
end

lu = require('luaunit')

function test_humaneval()
local candidate = validate
    lu.assertEquals(candidate(1234), true)
    lu.assertEquals(candidate(51241), false)
    lu.assertEquals(candidate(321), true)
end

os.exit(lu.LuaUnit.run())