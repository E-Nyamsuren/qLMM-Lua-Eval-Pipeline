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
    local longest_string = strings[1]
    for i = 2, #strings do
        if #strings[i] > #longest_string then
            longest_string = strings[i]
        end
    end
    return longest_string
end
print(longest({})) -- None
print(longest({'a', 'b', 'c'})) -- a
print(longest({'a', 'bb', 'ccc'})) -- ccc
print(longest({'a', 'bb', 'ccc', 'dddd'})) -- dddd
print(longest({'a', 'bb', 'ccc', 'dddd', 'eeeee'})) -- eeeee
print(longest({'a', 'bb', 'ccc', 'dddd', 'eeeee', 'ffffff'})) -- fffff
print(longest({'a', 'bb', 'ccc', 'dddd', 'eeeee', 'ffffff', 'ggggggg'})) -- ggggggg
print(longest({'a', 'bb', 'ccc', 'dddd', 'eeeee', 'ffffff', 'ggggggg', 'hhhhhhhh'})) -- hhhhhhhhh
print(longest({'a', 'bb', 'ccc', 'dddd', 'eeeee', 'ffffff', 'ggggggg', 'hhhhhhhh', 'iiiiiiiii'})) -- iiiiiiiii
print(longest({'a', 'bb', 'ccc', 'dddd', 'eeeee', 'ffffff', 'ggggggg', 'hhhhhhhh', 'iiiiiiiii', 'jjjjjjjjjj'})) -- jjjjjjjjjjj
print(longest({'a', '

lu = require('luaunit')

function test_humaneval()
local candidate = longest
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'x')
    lu.assertEquals(candidate({'x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc'}), 'zzzz')
end

os.exit(lu.LuaUnit.run())