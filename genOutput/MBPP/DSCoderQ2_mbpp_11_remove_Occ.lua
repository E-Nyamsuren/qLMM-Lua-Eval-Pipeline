-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
    local f, l = string.find(s, ch, 1, true), string.rfind(s, ch)
    return f and l and (f > 1 and l < #s and s:sub(1, f - 1)..s:sub(f + 1, l - ) or s:sub(1, l))
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_Occ
    lu.assertEquals(candidate('hello', 'l'), 'heo')
    lu.assertEquals(candidate('abcda', 'a'), 'bcd')
    lu.assertEquals(candidate('PHP', 'P'), 'H')
end

os.exit(lu.LuaUnit.run())