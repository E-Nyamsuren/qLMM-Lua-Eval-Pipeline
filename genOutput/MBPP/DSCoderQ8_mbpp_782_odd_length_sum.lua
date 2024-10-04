-- Write a luathon function to find the sum of all odd length subtables. https://www.geeksforgeeks.org/sum-of-all-odd-length-subtables/
local function odd_length_sum(arr)
    local n = #arr
    local sum = 0
    for i = 1, n do
        local curr_sum = 0
        for j = i, n do
            curr_sum = curr_sum + arr[j]
            if (j - i + 1) % 2 == 1 then
                sum = sum + curr_sum
            end
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_length_sum
    lu.assertEquals(candidate({1, 2, 4}), 14)
    lu.assertEquals(candidate({1, 2, 1, 2}), 15)
    lu.assertEquals(candidate({1, 7}), 8)
end

os.exit(lu.LuaUnit.run())