-- Write a luathon function to find the largest number that can be formed with the given table of digits.
local function find_Max_Num(arr)
    local max = 0
    local max_num = 0
    for i = 1, #arr do
        if arr[i] > max then
            max = arr[i]
        end
    end
    for i = 1, #arr do
        if arr[i] == max then
            max_num = max_num * 10 + max
        end
    end
    return max_num
end
print(find_Max_Num({1, 3, 1, 0}))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = find_Max_Num
    lu.assertEquals(candidate({1, 2, 3}), 321)
    lu.assertEquals(candidate({4, 5, 6, 1}), 6541)
    lu.assertEquals(candidate({1, 2, 3, 9}), 9321)
end

os.exit(lu.LuaUnit.run())