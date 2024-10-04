-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
    if n == 1 then
        return 1
    elseif n == 2 then
        return 1
    else
        local memo = {1, 1}
        for i = 3, n do
            memo[i] = memo[memo[i-1]] + memo[i-memo[i-1]]
        end
        return memo[n]
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