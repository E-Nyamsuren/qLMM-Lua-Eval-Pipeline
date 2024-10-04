-- Write a luathon function to find the product of the table multiplication modulo n.
local function find_remainder(arr, n)
    local product = 1
    for i = 1, #arr do
        product = (product * (arr[i] % n)) % n
    end
    return product
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_remainder
    lu.assertEquals(candidate({100, 10, 5, 25, 35, 14}, 11), 9)
    lu.assertEquals(candidate({1, 1, 1}, 1), 0)
    lu.assertEquals(candidate({1, 2, 1}, 2), 0)
end

os.exit(lu.LuaUnit.run())