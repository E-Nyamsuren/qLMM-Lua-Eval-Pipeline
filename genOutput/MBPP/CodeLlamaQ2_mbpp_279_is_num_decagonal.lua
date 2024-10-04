-- Write a function to find the nth decagonal number.
local function is_num_decagonal(n)
    local s = tostring(n)
    local sum = 0
    for i = 1, #s do
        sum = sum + tonumber(s:sub(i, i))
    end
    return sum == n
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_num_decagonal
    lu.assertEquals(candidate(3), 27)
    lu.assertEquals(candidate(7), 175)
    lu.assertEquals(candidate(10), 370)
end

os.exit(lu.LuaUnit.run())