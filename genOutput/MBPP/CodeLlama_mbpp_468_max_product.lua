-- Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that table.
local function max_product(arr)
    local max = 1
    local n = #arr
    for i = 1, n do
        local product = 1
        for j = i, n do
            product = product * arr[j]
            if product > max then
                max = product
            end
        end
    end
    return max
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_product
    lu.assertEquals(candidate({3, 100, 4, 5, 150, 6}), 3000)
    lu.assertEquals(candidate({4, 42, 55, 68, 80}), 50265600)
    lu.assertEquals(candidate({10, 22, 9, 33, 21, 50, 41, 60}), 2460)
end

os.exit(lu.LuaUnit.run())