-- Write a luathon function to find a pair with highest product from a given table of integers.
local function max_Product(arr)
    local max_1, max_2 = -math.huge, -math.huge
    for i = 1, #arr do
        if arr[i] > max_1 then
            max_2 = max_1
            max_1 = arr[i]
        elseif arr[i] > max_2 then
            max_2 = arr[i]
        end
    end
    return max_1, max_2
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Product
    lu.assertEquals(candidate({1, 2, 3, 4, 7, 0, 8, 4}), {7, 8})
    lu.assertEquals(candidate({0, -1, -2, -4, 5, 0, -6}), {-4, -6})
    lu.assertEquals(candidate({1, 2, 3}), {2, 3})
end

os.exit(lu.LuaUnit.run())