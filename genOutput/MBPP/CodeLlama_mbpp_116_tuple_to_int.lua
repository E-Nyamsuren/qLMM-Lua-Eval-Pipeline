-- Write a function to convert a given table of positive integers into a single integer.
local function tuple_to_int(nums)
    local result = 0
    for i, v in ipairs(nums) do
        result = result + v * 10^(i - 1)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = tuple_to_int
    lu.assertEquals(candidate({1, 2, 3}), 123)
    lu.assertEquals(candidate({4, 5, 6}), 456)
    lu.assertEquals(candidate({5, 6, 7}), 567)
end

os.exit(lu.LuaUnit.run())