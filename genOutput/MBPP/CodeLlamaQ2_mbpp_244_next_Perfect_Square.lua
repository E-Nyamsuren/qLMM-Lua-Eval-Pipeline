-- Write a luathon function to find the next perfect square greater than a given number.
local function next_Perfect_Square(N)
    local i = N + 1
    while true do
        if i * i > N then
            return i
        end
        i = i + 1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_Perfect_Square
    lu.assertEquals(candidate(35), 36)
    lu.assertEquals(candidate(6), 9)
    lu.assertEquals(candidate(9), 16)
end

os.exit(lu.LuaUnit.run())