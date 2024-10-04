-- Write a function to find squares of individual elements in a table.
local function square_nums(nums)
    local squares = {}
    for i, num in ipairs(nums) do
        squares[i] = num * num
    end
    return squares
end

lu = require('luaunit')

function test_humaneval()
local candidate = square_nums
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), {1, 4, 9, 16, 25, 36, 49, 64, 81, 100})
    lu.assertEquals(candidate({10, 20, 30}), {100, 400, 900})
    lu.assertEquals(candidate({12, 15}), {144, 225})
end

os.exit(lu.LuaUnit.run())