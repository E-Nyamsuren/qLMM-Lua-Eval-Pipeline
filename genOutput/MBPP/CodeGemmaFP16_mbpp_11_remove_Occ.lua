-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
    local i = 1
    local j = #s
    while i <= j do
        if s:sub(i, i) == ch then
            s = s:sub(1, i - 1) .. s:sub(i + 1, j)
            j = j - 1
        else
            i = i + 1
        end
    end
    return s
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_Occ
    lu.assertEquals(candidate('hello', 'l'), 'heo')
    lu.assertEquals(candidate('abcda', 'a'), 'bcd')
    lu.assertEquals(candidate('PHP', 'P'), 'H')
end

os.exit(lu.LuaUnit.run())