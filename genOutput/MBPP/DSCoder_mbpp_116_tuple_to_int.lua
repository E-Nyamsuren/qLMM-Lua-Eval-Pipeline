-- Write a function to convert a given table of positive integers into a single integer.
local function tuple_to_int(nums)
    local str = ""
    for i, num in ipairs(nums) do
        str = str .. tostring(num)
    end
    return tonumber(str)
end

lu = require('luaunit')

function test_humaneval()
local candidate = tuple_to_int
    lu.assertEquals(candidate({1, 2, 3}), 123)
    lu.assertEquals(candidate({4, 5, 6}), 456)
    lu.assertEquals(candidate({5, 6, 7}), 567)
end

os.exit(lu.LuaUnit.run())