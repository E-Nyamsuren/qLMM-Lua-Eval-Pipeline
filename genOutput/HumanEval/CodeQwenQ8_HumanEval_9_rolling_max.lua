-- From a given table of integers, generate a table of rolling maximum element found until given moment
-- in the sequence.
-- >>> rolling_max({1, 2, 3, 2, 3, 4, 2})
-- {1, 2, 3, 3, 3, 4, 4}
local function rolling_max(numbers)
    local max_table = {}
    local current_max = numbers[1]
    for _, number in ipairs(numbers) do
        if number > current_max then
            current_max = number
        end
        table.insert(max_table, current_max)
    end
    return max_table
end
print(table.concat(rolling_max({1, 2, 3, 2, 3, 4, 2}), ", ")) -- 1, 2, 3, 3, 3, 4, 4
print(table.concat(rolling_max({5, 3, 6, 7, 2, 5, 1}), ", ")) -- 5, 5, 6, 7, 7, 7, 7
print(table.concat(rolling_max({8, 9, 10, 11, 12, 13, 14}), ", ")) -- 8, 9, 10, 11, 12, 13, 14
print(table.concat(rolling_max({15, 14, 13, 12, 11, 10, 9}), ", ")) -- 15, 15, 15, 15, 15, 15, 15
print(table.concat(rolling_max({16, 17, 18, 19, 20, 21, 22}), ", ")) -- 16, 17, 18, 19, 20, 21, 22
print(table.concat(rolling_max({23, 22, 21, 20, 19, 18, 17}), ", ")) -- 23, 23, 23, 23, 23, 23, 23
print(table.concat(rolling_max({24, 25, 26, 27

lu = require('luaunit')

function test_humaneval()
local candidate = rolling_max
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 2, 3, 4})
    lu.assertEquals(candidate({4, 3, 2, 1}), {4, 4, 4, 4})
    lu.assertEquals(candidate({3, 2, 3, 100, 3}), {3, 3, 3, 100, 100})
end

os.exit(lu.LuaUnit.run())