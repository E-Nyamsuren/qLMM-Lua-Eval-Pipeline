-- Write a function to find the nth nonagonal number.
local function is_nonagonal(n)
    local i = 1
    local nonagonal = 0
    while nonagonal < n do
        i = i + 1
        nonagonal = i * (7 * i - 5) / 2
    end
    return nonagonal == n
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_nonagonal
    lu.assertEquals(candidate(10), 325)
    lu.assertEquals(candidate(15), 750)
    lu.assertEquals(candidate(18), 1089)
end

os.exit(lu.LuaUnit.run())