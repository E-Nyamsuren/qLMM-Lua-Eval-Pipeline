-- Return length of given string
-- >>> strlen('')
-- 0
-- >>> strlen('abc')
-- 3
local function strlen(string)
    local length = 0
    for _ in string:gmatch('.') do
        length = length + 1
    end
    return length
end

lu = require('luaunit')

function test_humaneval()
local candidate = strlen
    lu.assertEquals(candidate(''), 0)
    lu.assertEquals(candidate('x'), 1)
    lu.assertEquals(candidate('asdasnakj'), 9)
end

os.exit(lu.LuaUnit.run())