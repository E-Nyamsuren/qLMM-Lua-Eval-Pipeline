-- Concatenate table of strings into a single string
-- >>> concatenate({})
-- ''
-- >>> concatenate({'a', 'b', 'c'})
-- 'abc'
local function concatenate(strings)
    local result = ''
    for _, s in ipairs(strings) do
        result = result .. s
    end
    return result
end
print(concatenate({})) -- ''
print(concatenate({'a', 'b', 'c'})) -- 'abc'
print(concatenate({'hello', 'world'})) -- 'helloworld'
print(concatenate({'123', '456', '789'})) -- '123456789'
print(concatenate({'a', '', 'b', ''})) -- 'ab'
print(concatenate({'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'})) -- 'abcdefghijklmnopqrstuvwxyz'
print(concatenate({'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'})) -- 'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz'
print(concatenate({'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',

lu = require('luaunit')

function test_humaneval()
local candidate = concatenate
    lu.assertEquals(candidate({}), '')
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'xyz')
    lu.assertEquals(candidate({'x', 'y', 'z', 'w', 'k'}), 'xyzwk')
end

os.exit(lu.LuaUnit.run())