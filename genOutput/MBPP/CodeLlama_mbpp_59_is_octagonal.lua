-- Write a function to find the nth octagonal number.
local function is_octagonal(n)
    local s = math.sqrt(n)
    return s - math.floor(s) == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_octagonal
    lu.assertEquals(candidate(5), 65)
    lu.assertEquals(candidate(10), 280)
    lu.assertEquals(candidate(15), 645)
end

os.exit(lu.LuaUnit.run())