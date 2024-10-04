-- Write a function to check whether the entered number is greater than the elements of the given table.
local function check_greater(arr, number)
    for i, v in ipairs(arr) do
        if number > v then
            return true
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_greater
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, 4), false)
    lu.assertEquals(candidate({2, 3, 4, 5, 6}, 8), true)
    lu.assertEquals(candidate({9, 7, 4, 8, 6, 1}, 11), true)
end

os.exit(lu.LuaUnit.run())