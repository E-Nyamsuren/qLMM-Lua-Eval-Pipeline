-- Write a luathon function to remove the characters which have odd index values of a given string.
local function odd_values_string(str)
    local new_str = ''
    for i = 1, string.len(str), 2 do
        new_str = new_str .. string.sub(str, i, i)
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_values_string
    lu.assertEquals(candidate('abcdef'), 'ace')
    lu.assertEquals(candidate('python'), 'pto')
    lu.assertEquals(candidate('data'), 'dt')
    lu.assertEquals(candidate('lambs'), 'lms')
end

os.exit(lu.LuaUnit.run())