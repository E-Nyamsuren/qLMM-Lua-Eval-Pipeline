-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local num_str = tostring(num)
    local len = #num_str
    local mid = math.floor(len / 2)
    local left = string.sub(num_str, 1, mid)
    local right = string.sub(num_str, len - mid + 1, len)
    if left == right then
        return num + 1
    elseif left < right then
        return tonumber(string.sub(num_str, 1, mid) .. string.reverse(string.sub(num_str, 1, mid)))
    else
        return tonumber(string.sub(num_str, 1, mid - 1) .. string.reverse(string.sub(num_str, 1, mid - 1)))
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())