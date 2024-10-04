-- Given a string, find out how many distinct characters (regardless of case) does it consist of
-- >>> count_distinct_characters('xyzXYZ')
-- 3
-- >>> count_distinct_characters('Jerry')
-- 4
local function count_distinct_characters(string)
    local count = 0
    local chars = {}
    for i = 1, #string do
        local char = string:sub(i,i):lower()
        if not chars[char] then
            chars[char] = true
            count = count + 1
        end
    end
    return count
end
print(count_distinct_characters('xyzXYZ')) -- 3
print(count_distinct_characters('Jerry')) -- 4
print(count_distinct_characters('Hello, World!')) -- 7
print(count_distinct_characters('123321')) -- 3
print(count_distinct_characters('')) -- 0
print(count_distinct_characters('AaBbCc')) -- 3
print(count_distinct_characters('!@#$%^&*()')) -- 12
print(count_distinct_characters('Spaces are not counted!   ')) -- 17
print(count_distinct_characters('Tabs\tand\nnewlines\nare\nnot\ncounted!')) -- 17
print(count_distinct_characters('Special characters like #, @, and % are not counted!')) -- 24
print(count_distinct_characters('1234567890')) -- 10
print(count_distinct_characters('SameCharacters')) -- 1
print(count_distinct_characters('SameCharactersSameCase')) -- 1
print(count_distinct_characters('SameCharactersSameCaseSameNumber')) -- 1
print(count_distinct_characters('SameCharactersSameCaseSameNumberSameSymbol')) -- 1
print(count_distinct_characters('SameCharacters

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