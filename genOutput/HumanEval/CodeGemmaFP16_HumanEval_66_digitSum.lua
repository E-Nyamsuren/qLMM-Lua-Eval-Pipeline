-- Task
-- Write a function that takes a string as input and returns the sum of the upper characters only'
-- ASCII codes.
-- Examples:
-- >>> digitSum('')
-- 0
-- >>> digitSum('abAB')
-- 131
-- >>> digitSum('abcCd')
-- 67
-- >>> digitSum('helloE')
-- 69
-- >>> digitSum('woArBld')
-- 131
-- >>> digitSum('aAaaaXa')
-- 153
local function digitSum(s)
    local sum = 0
    for i = 1, #s do
        local char = string.sub(s, i, i)
        local ascii = string.byte(char)
        if ascii >= 48 and ascii <= 57 then
            sum = sum + ascii
        end
    end
    return sum
end
print(digitSum('abAB'))
print(digitSum('abcCd'))
print(digitSum('helloE'))
print(digitSum('woArBld'))
print(digitSum('aAaaaXa'))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = digitSum
    lu.assertEquals(candidate(''), 0)
    lu.assertEquals(candidate('abAB'), 131)
    lu.assertEquals(candidate('abcCd'), 67)
    lu.assertEquals(candidate('helloE'), 69)
    lu.assertEquals(candidate('woArBld'), 131)
    lu.assertEquals(candidate('aAaaaXa'), 153)
    lu.assertEquals(candidate(' How are yOu?'), 151)
    lu.assertEquals(candidate('You arE Very Smart'), 327)
end

os.exit(lu.LuaUnit.run())