-- Write a luathon function to find the smallest power of 2 greater than or equal to n.
local function next_power_of_2(n)
    if n <= 0 then return 1 end
    local p = 1
    while p < n do p = p * 2 end
    return p
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_power_of_2
    lu.assertEquals(candidate(0), 1)
    lu.assertEquals(candidate(5), 8)
    lu.assertEquals(candidate(17), 32)
end

os.exit(lu.LuaUnit.run())