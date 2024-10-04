-- Write a luathon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
local function validate(n)
    local digits = {}
    while n > 0 do
        local digit = n % 10
        if digits[digit] == nil then
            digits[digit] = 1
        else
            digits[digit] = digits[digit] + 1
        end
        n = math.floor(n / 10)
    end
    for digit, count in pairs(digits) do
        if count > digit then
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