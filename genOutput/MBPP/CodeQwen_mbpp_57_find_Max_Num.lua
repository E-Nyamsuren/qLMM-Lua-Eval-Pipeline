-- Write a luathon function to find the largest number that can be formed with the given table of digits.
local function find_Max_Num(arr)
    -- Sort the array in descending order
    table.sort(arr, function(a, b) return a > b end)
    
    -- Concatenate the sorted array to form the largest number
    local max_num = table.concat(arr)
    
    -- Return the largest number
    return tonumber(max_num)
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Max_Num
    lu.assertEquals(candidate({1, 2, 3}), 321)
    lu.assertEquals(candidate({4, 5, 6, 1}), 6541)
    lu.assertEquals(candidate({1, 2, 3, 9}), 9321)
end

os.exit(lu.LuaUnit.run())