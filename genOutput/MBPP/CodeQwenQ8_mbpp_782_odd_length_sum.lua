-- Write a luathon function to find the sum of all odd length subtables. https://www.geeksforgeeks.org/sum-of-all-odd-length-subtables/
local function odd_length_sum(arr)
    local sum = 0
    local n = #arr
    for i = 1, n do
        for j = i, n do
            local sub_table = {}
            for k = i, j do
                table.insert(sub_table, arr[k])
            end
            if #sub_table % 2 ~= 0 then
                sum = sum + sub_table[1]
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