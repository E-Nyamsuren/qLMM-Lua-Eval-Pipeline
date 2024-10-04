-- Return length of given string
-- >>> strlen('')
-- 0
-- >>> strlen('abc')
-- 3
local function strlen(string)
    local count = 0
    for _ in string do
        count = count + 1
    end
    return count
end
print(strlen('abc'))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = strlen
    lu.assertEquals(candidate(''), 0)
    lu.assertEquals(candidate('x'), 1)
    lu.assertEquals(candidate('asdasnakj'), 9)
end

os.exit(lu.LuaUnit.run())