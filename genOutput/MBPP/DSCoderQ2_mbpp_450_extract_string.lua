-- Write a function to extract specified size of strings from a given table of string values.
local function extract_string(str, l)
    local _, err = pcall(function()
        assert(#str == l, "Length mismatch")
    end)
    if err then
        return nil, err
    else
        return str
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_string
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 8), {'practice', 'solution'})
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 6), {'Python'})
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 9), {'exercises'})
end

os.exit(lu.LuaUnit.run())