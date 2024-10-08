-- Return table with elements incremented by 1.
-- >>> incr_list({1, 2, 3})
-- {2, 3, 4}
-- >>> incr_list({5, 3, 5, 2, 3, 3, 9, 0, 123})
-- {6, 4, 6, 3, 4, 4, 10, 1, 124}
local function incr_list(l)
    local result = {}
    for _, v in ipairs(l) do
        table.insert(result, v + 1)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = incr_list
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({3, 2, 1}), {4, 3, 2})
    lu.assertEquals(candidate({5, 2, 5, 2, 3, 3, 9, 0, 123}), {6, 3, 6, 3, 4, 4, 10, 1, 124})
end

os.exit(lu.LuaUnit.run())