-- Write a function to remove odd characters in a string.
local function remove_odd(str1)
    local str2 = ""
    for i = 1, #str1 do
        if i % 2 == 0 then
            str2 = str2 .. str1:sub(i, i)
        end
    end
    return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_odd
    lu.assertEquals(candidate('python'), 'yhn')
    lu.assertEquals(candidate('program'), 'rga')
    lu.assertEquals(candidate('language'), 'agae')
end

os.exit(lu.LuaUnit.run())