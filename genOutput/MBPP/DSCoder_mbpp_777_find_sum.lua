-- Write a luathon function to find the sum of non-repeated elements in a given table.
local function find_sum(arr)
    local sum = 0
    local hash = {}
    for i = 1, #arr do
        if hash[arr[i]] then
            hash[arr[i]] = hash[arr[i]] + 1
        else
            hash[arr[i]] = 1
        end
    end
    for key, value in pairs(hash) do
        if value == 1 then
            sum = sum + key
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_sum
    lu.assertEquals(candidate({1, 2, 3, 1, 1, 4, 5, 6}), 21)
    lu.assertEquals(candidate({1, 10, 9, 4, 2, 10, 10, 45, 4}), 71)
    lu.assertEquals(candidate({12, 10, 9, 45, 2, 10, 10, 45, 10}), 78)
end

os.exit(lu.LuaUnit.run())