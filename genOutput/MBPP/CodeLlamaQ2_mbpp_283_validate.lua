-- Write a luathon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
local function validate(n)
    local digit_count = {}
    local digit = 0
    while n > 0 do
        digit = n % 10
        if digit_count[digit] == nil then
            digit_count[digit] = 1
        else
            digit_count[digit] = digit_count[digit] + 1
        end
        n = n // 10
    end
    for k, v in pairs(digit_count) do
        if v > k then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = validate
    lu.assertEquals(candidate(1234), true)
    lu.assertEquals(candidate(51241), false)
    lu.assertEquals(candidate(321), true)
end

os.exit(lu.LuaUnit.run())