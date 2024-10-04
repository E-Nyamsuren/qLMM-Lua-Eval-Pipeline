-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)
    local sum = 0
    for i = 1, #x do
        sum = sum + x:sub(i, i)
    end
    return sum % 10 == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_woodall
    lu.assertEquals(candidate(383), true)
    lu.assertEquals(candidate(254), false)
    lu.assertEquals(candidate(200), false)
end

os.exit(lu.LuaUnit.run())