-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local str = tostring(num)
    local len = #str
    local i = len
    while i > 0 do
        if str:sub(i, i) ~= str:sub(1, 1) then
            break
        end
        i = i - 1
    end
    if i == 0 then
        return num + 1
    end
    local next_str = str:sub(1, i - 1) .. str:sub(1, 1) .. str:sub(i + 1, len)
    return tonumber(next_str)
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())