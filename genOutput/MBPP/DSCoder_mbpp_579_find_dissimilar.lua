-- Write a function to find the dissimilar elements in the given two tables.
local function find_dissimilar(test_tup1, test_tup2)
    local t1 = {}
    local t2 = {}
    for i, v in ipairs(test_tup1) do
        t1[v] = (t1[v] or 0) + 1
    end
    for i, v in ipairs(test_tup2) do
        t2[v] = (t2[v] or 0) + 1
    end
    local dissimilar = {}
    for k in pairs(t1) do
        if not t2[k] then
            table.insert(dissimilar, k)
        end
    end
    for k in pairs(t2) do
        if not t1[k] then
            table.insert(dissimilar, k)
        end
    end
    return dissimilar
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_dissimilar
    lu.assertEquals(candidate({3, 4, 5, 6}, {5, 7, 4, 10}), {3, 6, 7, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, {7, 2, 3, 9}), {1, 4, 7, 9})
    lu.assertEquals(candidate({21, 11, 25, 26}, {26, 34, 21, 36}), {34, 36, 11, 25})
end

os.exit(lu.LuaUnit.run())