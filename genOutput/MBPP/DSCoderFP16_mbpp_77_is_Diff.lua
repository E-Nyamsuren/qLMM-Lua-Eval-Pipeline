-- Write a luathon function to find whether a number is divisible by 11.
local function is_Diff(n)
    local sum = 0
    local is_Odd = n % 2 ~= 0
    for i = 1, #n do
        local digit = tonumber(n:sub(i, i))
        sum = sum + digit
    end
    local diff = sum % 11
    if is_Odd then
        return diff == 0 or diff == 1
    else
        return diff == 0 or diff == 2 or diff == 3 or diff == 4 or diff == 5 or diff == 6 or diff == 7 or diff == 8 or diff == 9
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Diff
    lu.assertEquals(candidate(12345), false)
    lu.assertEquals(candidate(1212112), true)
    lu.assertEquals(candidate(1212), false)
end

os.exit(lu.LuaUnit.run())