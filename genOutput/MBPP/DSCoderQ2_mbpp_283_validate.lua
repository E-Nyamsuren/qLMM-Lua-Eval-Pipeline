-- Write a luathon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
local function validate(n)
    local digits = {}
    local str = tostring(n)
    for i = 1, #str do
        local digit = tonumber(strsub(str, i, i))
        if digits[digit] then
            digits[digit] = digits[digit] + 1
        else
            digits[digit] = 1
       
end

lu = require('luaunit')

function test_humaneval()
local candidate = validate
    lu.assertEquals(candidate(1234), true)
    lu.assertEquals(candidate(51241), false)
    lu.assertEquals(candidate(321), true)
end

os.exit(lu.LuaUnit.run())