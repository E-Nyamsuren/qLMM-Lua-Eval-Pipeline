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
        local c = s:sub(i, i)
        if c >= 'A' and c <= 'Z' then
            sum = sum + c:byte()
        end
    end
    return sum
end
print(digitSum('')) -- 0
print(digitSum('abAB')) -- 131
print(digitSum('abcCd')) -- 67
print(digitSum('helloE')) -- 69
print(digitSum('woArBld')) -- 131
print(digitSum('aAaaaXa')) -- 153

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