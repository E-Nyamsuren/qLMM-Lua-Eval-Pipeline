-- Write a luathon function to check whether all the characters are same or not.
local function all_Characters_Same(s)
    for i = 2, #s do
        if s:sub(i, i) ~= s:sub(1, 1) then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = all_Characters_Same
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('aaa'), true)
    lu.assertEquals(candidate('data'), false)
end

os.exit(lu.LuaUnit.run())