-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local str = tostring(num)
    local len = #str
    if len == 1 then
        return num
    end
    local mid = math.floor(len / 2)
    local left = str:sub(1, mid)
    local right = str:sub(mid + 1, len)
    if left == right then
        return num
    end
    local i = 1
    while i <= mid do
        if left:sub(i, i) ~= right:sub(len - i + 1, len - i + 1) then
            break
        end
        i = i + 1
    end
    local new_left = left:sub(1, i - 1) .. right:sub(len - i + 1, len)
    return tonumber(new_left .. new_left:sub(#new_left - i + 1, #new_left))
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())