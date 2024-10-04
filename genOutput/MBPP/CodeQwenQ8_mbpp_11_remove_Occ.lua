-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
    local first_index = s:find(ch)
    local last_index = s:reverse():find(ch)
    if first_index and last_index then
        return s:sub(1, first_index - 1) .. s:sub(first_index + 1, -1):sub(1, -last_index - 1)
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