-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local digits = {}
    while num > 0 do
        table.insert(digits, 1, num % 10)
        num = math.floor(num / 10)
    end
    local palindrome = table.concat(digits)
    while true do
        palindrome = palindrome:reverse()
        if tonumber(palindrome) > tonumber(num) then
            return tonumber(palindrome)
        end
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