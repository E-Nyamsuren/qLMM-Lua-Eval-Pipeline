-- Write a function to find the item with maximum frequency in a given table.
local function max_occurrences(nums)
    local occurrences = {}
    local max_freq = 0
    local max_num = nil
    
    for _, num in ipairs(nums) do
        if occurrences[num] then
            occurrences[num] = occurrences[num] + 1
        else
            occurrences[num] = 1
        end
        
        if occurrences[num] > max_freq then
            max_freq = occurrences[num]
            max_num = num
        end
    end
    
    return max_num
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_occurrences
    lu.assertEquals(candidate({2, 3, 8, 4, 7, 9, 8, 2, 6, 5, 1, 6, 1, 2, 3, 2, 4, 6, 9, 1, 2}), 2)
    lu.assertEquals(candidate({2, 3, 8, 4, 7, 9, 8, 7, 9, 15, 14, 10, 12, 13, 16, 18}), 8)
    lu.assertEquals(candidate({10, 20, 20, 30, 40, 90, 80, 50, 30, 20, 50, 10}), 20)
end

os.exit(lu.LuaUnit.run())