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
    local max_length = 0
    local longest_string = strings[1]
    for _, string in ipairs(strings) do
        if #string > max_length then
            max_length = #string
            longest_string = string
        end
    end
    return longest_string
end
return longest

lu = require('luaunit')

function test_humaneval()
local candidate = longest
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'x')
    lu.assertEquals(candidate({'x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc'}), 'zzzz')
end

os.exit(lu.LuaUnit.run())