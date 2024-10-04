-- Find how many times a given substring can be found in the original string. Count overlaping cases.
-- >>> how_many_times('', 'a')
-- 0
-- >>> how_many_times('aaa', 'a')
-- 3
-- >>> how_many_times('aaaa', 'aa')
-- 3
local function how_many_times(string, substring)
    if string == '' or substring == '' then
        return 0
    end
    local count = 0
    local i = 1
    while i <= #string do
        local found = string:find(substring, i)
        if found then
            count = count + 1
            i = found + 1
        else
            break
        end
    end
    return count
end
print(how_many_times('', 'a')) -- 0
print(how_many_times('aaa', 'a')) -- 3
print(how_many_times('aaaa', 'aa')) -- 3
print(how_many_times('abcabcabc', 'abc')) -- 3
print(how_many_times('abcabcabc', 'bca')) -- 2
print(how_many_times('abcabcabc', 'cab')) -- 2
print(how_many_times('abcabcabc', 'cba')) -- 1
print(how_many_times('abcabcabc', 'abcabc')) -- 1
print(how_many_times('abcabcabc', 'abcabcabc')) -- 1
print(how_many_times('abcabcabc', 'abcabcabcd')) -- 0
print(how_many_times('abcabcabc', 'abcabcabcabcd')) -- 0
print(how_many_times('abcabcabc', 'abcabcabcabc')) -- 1
print(how_many_times('abcabcabc', 'abcabcabcabcd')) -- 0
print(how_many_times('abcabcabc', 'abcabcabcabcabcd')) -- 0
print(how_many_times('abcabcabc', 'abcabcabcabcabc')) -- 1
print(how_many_times('abcabcabc', 'abcabcabcabcab

lu = require('luaunit')

function test_humaneval()
local candidate = how_many_times
    lu.assertEquals(candidate('', 'x'), 0)
    lu.assertEquals(candidate('xyxyxyx', 'x'), 4)
    lu.assertEquals(candidate('cacacacac', 'cac'), 4)
    lu.assertEquals(candidate('john doe', 'john'), 1)
end

os.exit(lu.LuaUnit.run())