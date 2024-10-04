-- Return sorted unique common elements for two tables.
-- >>> common({1, 4, 3, 34, 653, 2, 5}, {5, 7, 1, 5, 9, 653, 121})
-- {1, 5, 653}
-- >>> common({5, 3, 2, 8}, {3, 2})
-- {2, 3}
local function common(l1, l2)
    local res = {}
    for _, v in ipairs(l1) do
        if l2[v] then
            table.insert(res, v)
        end
    end
    return res
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = common
    lu.assertEquals(candidate({1, 4, 3, 34, 653, 2, 5}, {5, 7, 1, 5, 9, 653, 121}), {1, 5, 653})
    lu.assertEquals(candidate({5, 3, 2, 8}, {3, 2}), {2, 3})
    lu.assertEquals(candidate({4, 3, 2, 8}, {3, 2, 4}), {2, 3, 4})
    lu.assertEquals(candidate({4, 3, 2, 8}, {}), {})
end

os.exit(lu.LuaUnit.run())