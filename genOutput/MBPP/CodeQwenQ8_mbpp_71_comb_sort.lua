-- Write a function to sort a table of elements.
local function comb_sort(nums)
    local gap = #nums
    local shrink_factor = 1.3
    local is_sorted = false

lu = require('luaunit')

function test_humaneval()
local candidate = comb_sort
    lu.assertEquals(candidate({5, 15, 37, 25, 79}), {5, 15, 25, 37, 79})
    lu.assertEquals(candidate({41, 32, 15, 19, 22}), {15, 19, 22, 32, 41})
    lu.assertEquals(candidate({99, 15, 13, 47}), {13, 15, 47, 99})
end

os.exit(lu.LuaUnit.run())