-- Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that table.
local function max_product(arr)
    local n = #arr
    if n < 2 then
        return nil
    end
    local max_so_far = arr[1]
    local min_so_far = arr[1]
    local max_product = arr[1]
    for i = 2, n do
        if arr[i] < 0 then
            local temp = max_so_far
            max_so_far = min_so_far
            min_so_far = temp
        end
        max_so_far = math.max(arr[i], max_so_far * arr[i])
        min_so_far = math.min(arr[i], min_so_far * arr[i])
        max_product = math.max(max_product, max_so_far)
    end
    return max_product
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_product
    lu.assertEquals(candidate({3, 100, 4, 5, 150, 6}), 3000)
    lu.assertEquals(candidate({4, 42, 55, 68, 80}), 50265600)
    lu.assertEquals(candidate({10, 22, 9, 33, 21, 50, 41, 60}), 2460)
end

os.exit(lu.LuaUnit.run())