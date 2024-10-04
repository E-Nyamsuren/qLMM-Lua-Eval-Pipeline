-- Write a luathon function to reverse a table upto a given position.
local function reverse_Array_Upto_K(input, k)
    local temp = 0
    for i = 1, k do
        temp = input[i]
        input[i] = input[k]
        input[k] = temp
        k = k - 1
    end
    return input
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_Array_Upto_K
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, 4), {4, 3, 2, 1, 5, 6})
    lu.assertEquals(candidate({4, 5, 6, 7}, 2), {5, 4, 6, 7})
    lu.assertEquals(candidate({9, 8, 7, 6, 5}, 3), {7, 8, 9, 6, 5})
end

os.exit(lu.LuaUnit.run())