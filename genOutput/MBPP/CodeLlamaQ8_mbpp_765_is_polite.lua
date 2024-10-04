-- Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
local function is_polite(n)
    local digits = {}
    for i = 1, #n do
        table.insert(digits, tonumber(n:sub(i, i)))
    end
    if #digits == 1 then
        return true
    end
    if #digits == 2 then
        if digits[1] == 1 and digits[2] == 0 then
            return true
        end
        if digits[1] == 1 and digits[2] == 1 then
            return true
        end
        if digits[1] == 1 and digits[2] == 2 then
            return true
        end
        if digits[1] == 1 and digits[2] == 3 then
            return true
        end
        if digits[1] == 1 and digits[2] == 4 then
            return true
        end
        if digits[1] == 1 and digits[2] == 5 then
            return true
        end
        if digits[1] == 1 and digits[2] == 6 then
            return true
        end
        if digits[1] == 1 and digits[2] == 7 then
            return true
        end
        if digits[1] == 1 and digits[2] == 8 then
            return true
        end
        if digits[1] == 1 and digits[2] == 9 then
            return true
        end
        if digits[1] == 2 and digits[2] == 0 then
            return true
        end
        if digits[1] == 2 and digits[2] == 1 then
            return true
        end
        if digits[1] == 2 and digits[2] == 2 then
            return true
        end
        if digits[1] == 2 and digits[2] == 3 then
            return true
        end
        if digits[1] == 2 and digits[2] == 4 then
            return true
        end
        if digits[1] == 2 and digits[2] ==

lu = require('luaunit')

function test_humaneval()
local candidate = is_polite
    lu.assertEquals(candidate(7), 11)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(9), 13)
end

os.exit(lu.LuaUnit.run())