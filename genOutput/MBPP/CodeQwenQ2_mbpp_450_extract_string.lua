-- Write a function to extract specified size of strings from a given table of string values.
local function extract_string(str, l)
    if str == nil or l == nil then
        return nil
    end
    if l <= 0 then
        return ""
    end
    if l > #str then
        return str
    end
    return str:sub(1, l)
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_string
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 8), {'practice', 'solution'})
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 6), {'Python'})
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 9), {'exercises'})
end

os.exit(lu.LuaUnit.run())