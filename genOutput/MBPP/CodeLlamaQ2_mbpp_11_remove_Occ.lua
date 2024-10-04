-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
    local first = s:find(ch, 1, true)
    local last = s:find(ch, -1, true)
    if first == nil or last == nil then
        return s
    end
    return s:sub(1, first - 1) .. s:sub(last + 1)
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_Occ
    lu.assertEquals(candidate('hello', 'l'), 'heo')
    lu.assertEquals(candidate('abcda', 'a'), 'bcd')
    lu.assertEquals(candidate('PHP', 'P'), 'H')
end

os.exit(lu.LuaUnit.run())