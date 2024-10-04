-- For a given table of input numbers, calculate Mean Absolute Deviation
-- around the mean of this dataset.
-- Mean Absolute Deviation is the average absolute difference between each
-- element and a centerpoint (mean in this case):
-- MAD = average | x - x_mean |
-- >>> mean_absolute_deviation({1.0, 2.0, 3.0, 4.0})
-- 1.0
local function mean_absolute_deviation(numbers)
    local sum = 0
    local count = #numbers
    for _, number in ipairs(numbers) do
        sum = sum + number
    end
    local mean = sum / count
    local mad = 0
    for _, number in ipairs(numbers) do
        mad = mad + math.abs(number - mean)
    end
    return mad / count
end
print(mean_absolute_deviation({1.0, 2.0, 3.0, 4.0})) -- 1.0
print(mean_absolute_deviation({1.0, 2.0, 3.0, 4.0, 5.0})) -- 1.2
print(mean_absolute_deviation({1.0, 2.0, 3.0, 4.0, 5.0, 6.0})) -- 1.3333333333333333
print(mean_absolute_deviation({1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0})) -- 1.4285714285714286
print(mean_absolute_deviation({1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0})) -- 1.5
print(mean_absolute_deviation({1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0})) -- 1.6
print(mean_absolute_deviation({1

lu = require('luaunit')

function test_humaneval()
local candidate = mean_absolute_deviation
    lu.assertEquals(candidate({1.0, 2.0}), 0.5)
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0}), 1.0)
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0}), 1.2)
end

os.exit(lu.LuaUnit.run())