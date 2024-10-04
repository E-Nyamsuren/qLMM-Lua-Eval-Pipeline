-- Write a luathon function to find whether the parity of a given number is odd.
local function find_Parity(x)
    local count = 0
    while x > 0 do
        count = count + 1
        x = x - 1
    end
    if count % 2 == 0 then
        return "Even"
    else
        return "Odd"
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Parity
    lu.assertEquals(candidate(12), false)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(10), false)
end

os.exit(lu.LuaUnit.run())