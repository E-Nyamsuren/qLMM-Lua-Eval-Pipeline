-- Write a luathon function to convert a given string to uppercase.
local function is_upper(string)
    local i = 1
    while string[i] do
        if string[i] >= 'a' and string[i] <= 'z' then
            return false
        end
        i = i + 1
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_upper
    lu.assertEquals(candidate('person'), 'PERSON')
    lu.assertEquals(candidate('final'), 'FINAL')
    lu.assertEquals(candidate('Valid'), 'VALID')
end

os.exit(lu.LuaUnit.run())