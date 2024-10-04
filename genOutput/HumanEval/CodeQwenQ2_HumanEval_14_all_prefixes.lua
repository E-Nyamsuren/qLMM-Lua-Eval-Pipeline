-- Return table of all prefixes from shortest to longest of the input string
-- >>> all_prefixes('abc')
-- {'a', 'ab', 'abc'}
local function all_prefixes(string)
    local result = {}
    for i = 1, #string do
        result[i] = string:sub(1, i)
    end
    return result
end
print(all_prefixes('abc'))

lu = require('luaunit')

function test_humaneval()
local candidate = all_prefixes
    lu.assertEquals(candidate(''), {})
    lu.assertEquals(candidate('asdfgh'), {'a', 'as', 'asd', 'asdf', 'asdfg', 'asdfgh'})
    lu.assertEquals(candidate('WWW'), {'W', 'WW', 'WWW'})
end

os.exit(lu.LuaUnit.run())