-- Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
local function is_polite(n)
    local digits = {}
    for i = 1, #n do
        digits[i] = n:sub(i, i)
    end
    if #digits == 1 then
        return true
    end
    if #digits == 2 then
        if digits[1] == "1" then
            return false
        end
        if digits[1] == "2" then
            if digits[2] == "0" then
                return false
            end
            return true
        end
        if digits[1] == "3" then
            if digits[2] == "0" then
                return false
            end
            if digits[2] == "1" then
                return false
            end
            if digits[2] == "2" then
                return false
            end
            return true
        end
        if digits[1] == "4" then
            if digits[2] == "0" then
                return false
            end
            if digits[2] == "1" then
                return false
            end
            if digits[2] == "2" then
                return false
            end
            if digits[2] == "3" then
                return false
            end
            return true
        end
        if digits[1] == "5" then
            if digits[2] == "0" then
                return false
            end
            if digits[2] == "1" then
                return false
            end
            if digits[2] == "2" then
                return false
            end
            if digits[2] == "3" then
                return false
            end
            if digits[2] == "4" then
                return false
            end
            return true
        end
        if digits[1] == "6" then
            if digits[2] == "0" then
                return false
            end
            if digits[2] == "1" then
                return false
            end
            if digits[2] == "2" then
                return false
            end

lu = require('luaunit')

function test_humaneval()
local candidate = is_polite
    lu.assertEquals(candidate(7), 11)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(9), 13)
end

os.exit(lu.LuaUnit.run())