-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
    if n == 1 or n == 2 then
        return 1
    else
        return sequence(sequence(n - (n)) + sequence(n - 2))
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())