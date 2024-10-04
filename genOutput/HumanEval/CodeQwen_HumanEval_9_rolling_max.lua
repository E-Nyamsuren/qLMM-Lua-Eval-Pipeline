-- From a given table of integers, generate a table of rolling maximum element found until given moment
-- in the sequence.
-- >>> rolling_max({1, 2, 3, 2, 3, 4, 2})
-- {1, 2, 3, 3, 3, 4, 4}
local function rolling_max(numbers)
    local max_so_far = numbers[1]
    local rolling_max_table = {max_so_far}
    for i = 2, #numbers do
        if numbers[i] > max_so_far then
            max_so_far = numbers[i]
        end
        table.insert(rolling_max_table, max_so_far)
    end
    return rolling_max_table
end
print(rolling_max({1, 2, 3, 2, 3, 4, 2})) -- {1, 2, 3, 3, 3, 4, 4}
print(rolling_max({5, 3, 6, 7, 2})) -- {5, 5, 6, 7, 7}
print(rolling_max({8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20})) -- {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}
print(rolling_max({21, 22, 23, 24, 25, 26, 27, 28, 29, 30})) -- {21, 22, 23, 24, 25, 26, 27, 28, 29, 30}
print(rolling_max({31, 32, 33, 34, 35, 36, 37, 38, 39, 40})) -- {31, 32, 33, 34, 35, 36, 37, 38, 39, 40}
print(rolling_max({41, 42, 43, 44, 45,

lu = require('luaunit')

function test_humaneval()
local candidate = rolling_max
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 2, 3, 4})
    lu.assertEquals(candidate({4, 3, 2, 1}), {4, 4, 4, 4})
    lu.assertEquals(candidate({3, 2, 3, 100, 3}), {3, 3, 3, 100, 100})
end

os.exit(lu.LuaUnit.run())