-- Write a luathon function to find the next perfect square greater than a given number.
local function next_Perfect_Square(N)
    local i = 1
    while i * i <= N do
        i = i + 1
    end
    return i * i
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_Perfect_Square
    lu.assertEquals(candidate(35), 36)
    lu.assertEquals(candidate(6), 9)
    lu.assertEquals(candidate(9), 16)
end

os.exit(lu.LuaUnit.run())