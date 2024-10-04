-- Find how many times a given substring can be found in the original string. Count overlaping cases.
-- >>> how_many_times('', 'a')
-- 0
-- >>> how_many_times('aaa', 'a')
-- 3
-- >>> how_many_times('aaaa', 'aa')
-- 3
local function how_many_times(string, substring)
    if substring == '' then return 0 end
    local count = 0
    local pos = 1
    while pos <= #string do
        local found = string:find(substring, pos)
        if found then
            count = count + 1
            pos = found + 1
        else
            break
        end
    end
    return count
end
print(how_many_times('', 'a')) -- 0
print(how_many_times('aaa', 'a')) -- 3
print(how_many_times('aaaa', 'aa')) -- 3
print(how_many_times('ababab', 'ab')) -- 3
print(how_many_times('ababab', 'b')) -- 3
print(how_many_times('ababab', 'abab')) -- 2
print(how_many_times('ababab', 'ababa')) -- 1
print(how_many_times('ababab', 'abababa')) -- 0
print(how_many_times('ababab', '')) -- 0
print(how_many_times('ababab', 'a')) -- 3
print(how_many_times('ababab', 'b')) -- 3
print(how_many_times('ababab', 'ab')) -- 3
print(how_many_times('ababab', 'abab')) -- 2
print(how_many_times('ababab', 'ababa')) -- 1
print(how_many_times('ababab', 'abababa')) -- 0
print(how_many_times('ababab', '')) -- 0
print(how_many_times('ababab', 'a')) -- 3
print(how_many_times('ababab

lu = require('luaunit')

function test_humaneval()
local candidate = how_many_times
    lu.assertEquals(candidate('', 'x'), 0)
    lu.assertEquals(candidate('xyxyxyx', 'x'), 4)
    lu.assertEquals(candidate('cacacacac', 'cac'), 4)
    lu.assertEquals(candidate('john doe', 'john'), 1)
end

os.exit(lu.LuaUnit.run())