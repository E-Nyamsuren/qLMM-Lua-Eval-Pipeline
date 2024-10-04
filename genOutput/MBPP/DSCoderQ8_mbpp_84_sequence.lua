-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
    local memo = {0, 1, 1}
    local function recurse(n)
        if memo[n] == nil then
            memo[n] = recurse(recurse(n - 1) + recurse(n - recurse(n - 1)))
        end
        return memo[n]
    end
    return recurse(n)
end

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())