-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local str = tostring(num)
    local len = #str
    if len == 1 then
        return num + 1
    end
    if len % 2 == 0 then
        local mid = len // 2
        if str:sub(1, mid) == str:sub(mid + 1, len) then
            return num + 1
        end
    else
        local mid = len // 2
        if str:sub(1, mid) == str:sub(mid + 1, len) then
            return num + 1
        end
    end
    return num
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())