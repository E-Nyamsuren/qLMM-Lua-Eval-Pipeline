-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
    if n == 1 then
        return 1
    elseif n == 2 then
        return 1
    else
        return sequence(sequence(n - 1) + n - sequence(n - 1))
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