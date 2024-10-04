-- Write a function to count the total number of characters in a string.
local function count_charac(str1)
    local count = 0
    for i = 1, #str1 do
        count = count + 1
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_charac
    lu.assertEquals(candidate('python programming'), 18)
    lu.assertEquals(candidate('language'), 8)
    lu.assertEquals(candidate('words'), 5)
end

os.exit(lu.LuaUnit.run())