-- Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
local function is_polite(n)
    local s = tostring(n)
    local count = 0
    for i = 1, #s do
        if s:sub(i, i) == "3" or s:sub(i, i) == "5" then
            count = count + 1
        end
    end
    return count == 4
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_polite
    lu.assertEquals(candidate(7), 11)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(9), 13)
end

os.exit(lu.LuaUnit.run())