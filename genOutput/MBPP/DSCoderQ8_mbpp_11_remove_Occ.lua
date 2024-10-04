-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
    local first, last = s:find(ch), s:sub(-1, -1):find(ch)
    if first then
        s = s:sub(1, first - 1) .. s:sub(first + 1)
    end
    if last then
        s = s:sub(1, last - 1) .. s:sub(last + 1)
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