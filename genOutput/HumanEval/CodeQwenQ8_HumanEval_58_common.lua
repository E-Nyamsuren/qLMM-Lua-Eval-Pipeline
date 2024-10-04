-- Return sorted unique common elements for two tables.
-- >>> common({1, 4, 3, 34, 653, 2, 5}, {5, 7, 1, 5, 9, 653, 121})
-- {1, 5, 653}
-- >>> common({5, 3, 2, 8}, {3, 2})
-- {2, 3}
local function common(l1, l2)
    local common_elements = {}
    local l1_set = {}
    local l2_set = {}
    
    -- Convert lists to sets for faster lookup
    for _, v in ipairs(l1) do
        l1_set[v] = true
    end
    for _, v in ipairs(l2) do
        l2_set[v] = true
    end
    
    -- Find common elements
    for k, _ in pairs(l1_set) do
        if l2_set[k] then
            table.insert(common_elements, k)
        end
    end
    
    -- Sort the common elements
    table.sort(common_elements)
    
    return common_elements
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