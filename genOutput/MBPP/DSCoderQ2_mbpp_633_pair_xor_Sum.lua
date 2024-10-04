-- Write a luathon function to find the sum of xor of all pairs of numbers in the given table.
local function pair_xor_Sum(arr, n)
    local sum = 0
    for i = 0, n-1 do
        for j = i+1, n-1 do
            sum = sum + bit32.bxor(arr[i], arr[j])
        end
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = pair_xor_Sum
    lu.assertEquals(candidate({5, 9, 7, 6}, 4), 47)
    lu.assertEquals(candidate({7, 3, 5}, 3), 12)
    lu.assertEquals(candidate({7, 3}, 2), 4)
end

os.exit(lu.LuaUnit.run())