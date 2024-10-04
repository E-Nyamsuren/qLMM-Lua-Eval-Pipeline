-- Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
local function text_match_two_three(text)
    local a_found = false
    local b_count = 0
    for i = 1, #text do
        local c = text:sub(i, i)
        if c == 'a' then
            a_found = true
        elseif c == 'b' then
            b_count = b_count + 1
        end
    end
    return a_found and b_count >= 2 and b_count <= 3
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_two_three
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abbbba'), true)
end

os.exit(lu.LuaUnit.run())