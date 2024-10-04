-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local str = tostring(n)
    if #str < 3 then
        return false
    end
    local first_digit = str:sub(1, 1)
    local second_digit = str:sub(2, 2)
    if first_digit ~= second_digit then
        return false
    end
    for i = 3, #str do
        if str:sub(i, i) ~= first_digit then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())