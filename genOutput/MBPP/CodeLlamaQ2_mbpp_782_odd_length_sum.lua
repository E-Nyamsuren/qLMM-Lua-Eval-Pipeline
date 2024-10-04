-- Write a luathon function to find the sum of all odd length subtables. https://www.geeksforgeeks.org/sum-of-all-odd-length-subtables/
local function odd_length_sum(arr)
    local sum = 0
    for i = 1, #arr, 2 do
        local sub_sum = 0
        for j = i, i + 1 do
            if j <= #arr then
                sub_sum = sub_sum + arr[j]
            end
        end
        if #sub_sum % 2 ~= 0 then
            sum = sum + sub_sum
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