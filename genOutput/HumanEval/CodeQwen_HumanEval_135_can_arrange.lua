-- Create a function which returns the largest index of an element which
-- is not greater than or equal to the element immediately preceding it. If
-- no such element exists then return -1. The given table will not contain
-- duplicate values.
-- Examples:
-- >>> can_arrange({1, 2, 4, 3, 5})
-- 3
-- >>> can_arrange({1, 2, 3})
-- -1
local function can_arrange(arr)
    local n = #arr
    for i = n - 1, 1, -1 do
        if arr[i] < arr[i + 1] then
            return i
        end
    end
    return -1
end
print(can_arrange({1, 2, 4, 3, 5})) -- 3
print(can_arrange({1, 2, 3})) -- -1
print(can_arrange({5, 4, 3, 2, 1})) -- 0
print(can_arrange({1, 3, 2, 4, 5})) -- 2
print(can_arrange({10, 20, 30, 25, 40})) -- 3
print(can_arrange({100, 200, 300, 400})) -- -1
print(can_arrange({1, 2, 3, 4, 5, 6, 7, 8, 9, 10})) -- 9
print(can_arrange({10, 9, 8, 7, 6, 5, 4, 3, 2, 1})) -- 0
print(can_arrange({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11})) -- 9
print(can_arrange({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12})) -- 9
print(can_arrange({1, 2, 3, 4, 5, 6, 7, 8, 9, 

lu = require('luaunit')

function test_humaneval()
local candidate = can_arrange
    lu.assertEquals(candidate({1, 2, 4, 3, 5}), 3)
    lu.assertEquals(candidate({1, 2, 4, 5}), -1)
    lu.assertEquals(candidate({1, 4, 2, 5, 6, 7, 8, 9, 10}), 2)
    lu.assertEquals(candidate({4, 8, 5, 7, 3}), 4)
    lu.assertEquals(candidate({}), -1)
end

os.exit(lu.LuaUnit.run())