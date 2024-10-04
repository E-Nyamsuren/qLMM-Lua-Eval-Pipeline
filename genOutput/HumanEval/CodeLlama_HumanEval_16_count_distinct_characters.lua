-- Given a string, find out how many distinct characters (regardless of case) does it consist of
-- >>> count_distinct_characters('xyzXYZ')
-- 3
-- >>> count_distinct_characters('Jerry')
-- 4
local function count_distinct_characters(string)
    local count = 0
    local seen = {}
    for i = 1, #string do
        local c = string:sub(i, i):lower()
        if not seen[c] then
            count = count + 1
            seen[c] = true
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_distinct_characters
    lu.assertEquals(candidate(''), 0)
    lu.assertEquals(candidate('abcde'), 5)
    lu.assertEquals(candidate('abcdecadeCADE'), 5)
    lu.assertEquals(candidate('aaaaAAAAaaaa'), 1)
    lu.assertEquals(candidate('Jerry jERRY JeRRRY'), 5)
end

os.exit(lu.LuaUnit.run())