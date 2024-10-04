-- Concatenate table of strings into a single string
-- >>> concatenate({})
-- ''
-- >>> concatenate({'a', 'b', 'c'})
-- 'abc'
local function concatenate(strings)
    local result = ""
    for _, s in ipairs(strings) do
        result = result .. s
    end
    return result
end
print(concatenate({})) -- ''
print(concatenate({'a', 'b', 'c'})) -- 'abc'

lu = require('luaunit')

function test_humaneval()
local candidate = concatenate
    lu.assertEquals(candidate({}), '')
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'xyz')
    lu.assertEquals(candidate({'x', 'y', 'z', 'w', 'k'}), 'xyzwk')
end

os.exit(lu.LuaUnit.run())