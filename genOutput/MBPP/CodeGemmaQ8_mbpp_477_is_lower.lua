-- Write a luathon function to convert the given string to lower case.
local function is_lower(string)
    for i = 1, #string do
        if string:sub(i, i) ~= string:sub(i, i):lower() then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_lower
    lu.assertEquals(candidate('InValid'), 'invalid')
    lu.assertEquals(candidate('TruE'), 'true')
    lu.assertEquals(candidate('SenTenCE'), 'sentence')
end

os.exit(lu.LuaUnit.run())