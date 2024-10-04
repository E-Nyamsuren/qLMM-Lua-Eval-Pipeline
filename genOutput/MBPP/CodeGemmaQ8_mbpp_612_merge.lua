-- Write a luathon function which takes a table of tables, where each subtable has two elements, and returns a table of two tables where the first table has the first element of each subtable and the second one has the second.
local function merge(lst)
    local t1 = {}
    local t2 = {}
    for i,v in ipairs(lst) do
        table.insert(t1,v[1])
        table.insert(t2,v[2])
    end
    return {t1,t2}
end
print(merge({{1,2},{3,4},{5,6}}))

lu = require('luaunit')

function test_humaneval()
local candidate = merge
    lu.assertEquals(candidate({{'x', 'y'}, {'a', 'b'}, {'m', 'n'}}), {{'x', 'a', 'm'}, {'y', 'b', 'n'}})
    lu.assertEquals(candidate({{1, 2}, {3, 4}, {5, 6}, {7, 8}}), {{1, 3, 5, 7}, {2, 4, 6, 8}})
    lu.assertEquals(candidate({{'x', 'y', 'z'}, {'a', 'b', 'c'}, {'m', 'n', 'o'}}), {{'x', 'a', 'm'}, {'y', 'b', 'n'}, {'z', 'c', 'o'}})
end

os.exit(lu.LuaUnit.run())