-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local s = tostring(n)
    local len = string.len(s)
    local last_digit = s:sub(-1, -1)
    for i = 1, len - 1 do
        local current_digit = s:sub(i, i)
        if current_digit < last_digit then
            return false
        end
        last_digit = current_digit
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