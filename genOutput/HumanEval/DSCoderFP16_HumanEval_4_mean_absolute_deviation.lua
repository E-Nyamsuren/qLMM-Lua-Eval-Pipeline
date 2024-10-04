-- For a given table of input numbers, calculate Mean Absolute Deviation
-- around the mean of this dataset.
-- Mean Absolute Deviation is the average absolute difference between each
-- element and a centerpoint (mean in this case):
-- MAD = average | x - x_mean |
-- >>> mean_absolute_deviation({1.0, 2.0, 3.0, 4.0})
-- 1.0
local function mean_absolute_deviation(numbers)
    local sum = 0
    for _, num in ipairs(numbers) do
        sum = sum + num
    end
    local mean = sum / #numbers
    local mad = 0
    for _, num in ipairs(numbers) do
        mad = mad + math.abs(num - mean)
    end
    mad = mad / #numbers
    return mad
end

lu = require('luaunit')

function test_humaneval()
local candidate = mean_absolute_deviation
    lu.assertEquals(candidate({1.0, 2.0}), 0.5)
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0}), 1.0)
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0}), 1.2)
end

os.exit(lu.LuaUnit.run())