-- Write a luathon function to check whether the given number is even or not.
local function is_Even(n)
    if n % 2 == 0 then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Even
    lu.assertEquals(candidate(1), false)
    lu.assertEquals(candidate(2), true)
    lu.assertEquals(candidate(3), false)
end

os.exit(lu.LuaUnit.run())