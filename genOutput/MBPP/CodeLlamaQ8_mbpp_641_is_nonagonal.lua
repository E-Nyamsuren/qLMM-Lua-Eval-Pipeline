-- Write a function to find the nth nonagonal number.
local function is_nonagonal(n)
    local s = tostring(n)
    local sum = 0
    for i = 1, #s do
        sum = sum + tonumber(s:sub(i, i))
    end
    return sum == n
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_nonagonal
    lu.assertEquals(candidate(10), 325)
    lu.assertEquals(candidate(15), 750)
    lu.assertEquals(candidate(18), 1089)
end

os.exit(lu.LuaUnit.run())