-- Out of table of strings, return the longest one. Return the first one in case of multiple
-- strings of the same length. Return nil in case the input table is empty.
-- >>> longest({})
-- None
-- >>> longest({'a', 'b', 'c'})
-- 'a'
-- >>> longest({'a', 'bb', 'ccc'})
-- 'ccc'
local function longest(strings)
    if #strings == 0 then
        return nil
    end
    local longest = strings[1]
    for _, str in ipairs(strings) do
        if #str > #longest then
            longest = str
        end
    end
    return longest
end
<|file_separator|> -- Return the sum of all the numbers in the table. Return 0 in case the input table is empty.

lu = require('luaunit')

function test_humaneval()
local candidate = longest
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'x')
    lu.assertEquals(candidate({'x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc'}), 'zzzz')
end

os.exit(lu.LuaUnit.run())