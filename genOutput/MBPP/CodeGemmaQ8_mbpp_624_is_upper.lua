-- Write a luathon function to convert a given string to uppercase.
local function is_upper(string)
    for i = 1, #string do
        if string:sub(i, i) ~= string:sub(i, i):upper() then
            return false
        end
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