-- Return sorted unique common elements for two tables.
-- >>> common({1, 4, 3, 34, 653, 2, 5}, {5, 7, 1, 5, 9, 653, 121})
-- {1, 5, 653}
-- >>> common({5, 3, 2, 8}, {3, 2})
-- {2, 3}
local function common(l1, l2)
    local t1 = {}
    for _, v in ipairs(l1) do
        t1[v] = true
    end
    local t2 = {}
    for _, v in ipairs(l2) do
        t2[v] = true
    end
    local t3 = {}
    for k, _ in pairs(t1) do
        if t2[k] then
            t3[k] = true
        end
    end
    local t4 = {}
    for k, _ in pairs(t3) do
        table.insert(t4, k)
    end
    table.sort(t4)
    return t4
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