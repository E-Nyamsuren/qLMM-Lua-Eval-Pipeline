-- Return sorted unique common elements for two tables.
-- >>> common({1, 4, 3, 34, 653, 2, 5}, {5, 7, 1, 5, 9, 653, 121})
-- {1, 5, 653}
-- >>> common({5, 3, 2, 8}, {3, 2})
-- {2, 3}
local function common(l1, l2)
    local s1 = {}
    local s2 = {}
    for _, v in ipairs(l1) do
        s1[v] = true
    end
    for _, v in ipairs(l2) do
        s2[v] = true
    end
    local common = {}
    for k, _ in pairs(s1) do
        if s2[k] then
            table.insert(common, k)
        end
    end
    table.sort(common)
    return common
end

lu = require('luaunit')

function test_humaneval()
local candidate = common
    lu.assertEquals(candidate({1, 4, 3, 34, 653, 2, 5}, {5, 7, 1, 5, 9, 653, 121}), {1, 5, 653})
    lu.assertEquals(candidate({5, 3, 2, 8}, {3, 2}), {2, 3})
    lu.assertEquals(candidate({4, 3, 2, 8}, {3, 2, 4}), {2, 3, 4})
    lu.assertEquals(candidate({4, 3, 2, 8}, {}), {})
end

os.exit(lu.LuaUnit.run())