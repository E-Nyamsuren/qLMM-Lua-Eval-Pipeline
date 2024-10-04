-- Write a function to find the n'th lucas number.
local function find_lucas(n)
    if n == 1 then
        return 2
    elseif n == 2 then
        return 1
    else
        return find_lucas(n-1) + find_lucas(n-2)
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_lucas
    lu.assertEquals(candidate(9), 76)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(3), 4)
end

os.exit(lu.LuaUnit.run())