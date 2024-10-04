-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
    local first_index = string.find(s, ch)
    if not first_index then return s end
    local last_index = string.len(s)
    while last_index > 0 do
        if string.sub(s, last_index, last_index) == ch then
            break
        end
        last_index = last_index - 1
    end
    return string.sub(s, 1, first_index - 1) .. string.sub(s, last_index + 1)
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_Occ
    lu.assertEquals(candidate('hello', 'l'), 'heo')
    lu.assertEquals(candidate('abcda', 'a'), 'bcd')
    lu.assertEquals(candidate('PHP', 'P'), 'H')
end

os.exit(lu.LuaUnit.run())