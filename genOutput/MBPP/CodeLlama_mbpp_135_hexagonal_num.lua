-- Write a function to find the nth hexagonal number.
local function hexagonal_num(n)
    local i = 1
    while i < n do
        i = i + 1
    end
    return i
end

lu = require('luaunit')

function test_humaneval()
local candidate = hexagonal_num
    lu.assertEquals(candidate(10), 190)
    lu.assertEquals(candidate(5), 45)
    lu.assertEquals(candidate(7), 91)
end

os.exit(lu.LuaUnit.run())