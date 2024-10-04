-- Write a function that takes in two tables and subtracts the elements of the first table by the elements of the second table with the same index.
local function substract_elements(test_tup1, test_tup2)
    local tup1 = test_tup1
    local tup2 = test_tup2
    local tup3 = {}
    for i = 1, #tup1 do
        tup3[i] = tup1[i] - tup2[i]
    end
    return tup3
end
print(substract_elements({1,2,3,4,5}, {1,2,3,4,5}))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = substract_elements
    lu.assertEquals(candidate({10, 4, 5}, {2, 5, 18}), {8, -1, -13})
    lu.assertEquals(candidate({11, 2, 3}, {24, 45, 16}), {-13, -43, -13})
    lu.assertEquals(candidate({7, 18, 9}, {10, 11, 12}), {-3, 7, -3})
end

os.exit(lu.LuaUnit.run())