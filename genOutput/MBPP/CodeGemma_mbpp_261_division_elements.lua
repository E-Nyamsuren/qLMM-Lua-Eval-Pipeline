-- Write a function that takes in two tables and performs mathematical division operation element-wise across the given tables.
local function division_elements(test_tup1, test_tup2)
    local test_tup3 = {}
    for i = 1, #test_tup1 do
        test_tup3[i] = test_tup1[i] / test_tup2[i]
    end
    return test_tup3
end
print(division_elements({1,2,3,4,5,6,7,8,9,10}, {1,2,3,4,5,6,7,8,9,10}))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = division_elements
    lu.assertEquals(candidate({10, 4, 6, 9}, {5, 2, 3, 3}), {2, 2, 2, 3})
    lu.assertEquals(candidate({12, 6, 8, 16}, {6, 3, 4, 4}), {2, 2, 2, 4})
    lu.assertEquals(candidate({20, 14, 36, 18}, {5, 7, 6, 9}), {4, 2, 6, 2})
end

os.exit(lu.LuaUnit.run())