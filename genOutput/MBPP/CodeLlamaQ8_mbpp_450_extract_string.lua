-- Write a function to extract specified size of strings from a given table of string values.
local function extract_string(str, l)
    local s = {}
    for i = 1, l do
        s[i] = str:sub(i, i)
    end
    return s
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_string
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 8), {'practice', 'solution'})
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 6), {'Python'})
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 9), {'exercises'})
end

os.exit(lu.LuaUnit.run())