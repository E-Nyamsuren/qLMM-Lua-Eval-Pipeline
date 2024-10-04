-- Write a luathon function to find a pair with highest product from a given table of integers.
local function max_Product(arr)
    local max = 0
    local n = #arr
    for i = 1, n do
        for j = i + 1, n do
            if arr[i] * arr[j] > max then
                max = arr[i] * arr[j]
            end
        end
    end
    return max
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Product
    lu.assertEquals(candidate({1, 2, 3, 4, 7, 0, 8, 4}), {7, 8})
    lu.assertEquals(candidate({0, -1, -2, -4, 5, 0, -6}), {-4, -6})
    lu.assertEquals(candidate({1, 2, 3}), {2, 3})
end

os.exit(lu.LuaUnit.run())