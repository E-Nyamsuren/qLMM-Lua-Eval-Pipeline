-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
    local i = s:find(ch)
    local j = s:find(ch, -1, true)
    if i and j then
        return s:sub(1, i - 1) .. s:sub(j + 1)
    elseif i then
        return s:sub(1, i - 1)
    elseif j then
        return s:sub(j + 1)
    else
        return s
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_Occ
    lu.assertEquals(candidate('hello', 'l'), 'heo')
    lu.assertEquals(candidate('abcda', 'a'), 'bcd')
    lu.assertEquals(candidate('PHP', 'P'), 'H')
end

os.exit(lu.LuaUnit.run())