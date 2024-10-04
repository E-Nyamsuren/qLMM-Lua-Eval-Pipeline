-- Write a luathon function to find the sum of all odd length subtables. https://www.geeksforgeeks.org/sum-of-all-odd-length-subtables/
local function odd_length_sum(arr)
    local sum = 0
    local n = #arr
    for i in pairs(arr) do
        local temp_sum = 0
        for j in pairs(arr) do
            temp_sum = temp_sum + i
            if (j - i) % 2 == 0 then
                sum = sum + temp_sum
            end
       
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_length_sum
    lu.assertEquals(candidate({1, 2, 4}), 14)
    lu.assertEquals(candidate({1, 2, 1, 2}), 15)
    lu.assertEquals(candidate({1, 7}), 8)
end

os.exit(lu.LuaUnit.run())