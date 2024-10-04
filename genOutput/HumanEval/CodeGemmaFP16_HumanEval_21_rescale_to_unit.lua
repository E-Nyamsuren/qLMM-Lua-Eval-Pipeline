-- Given table of numbers (of at least two elements), apply a linear transform to that table,
-- such that the smallest number will become 0 and the largest will become 1
-- >>> rescale_to_unit({1.0, 2.0, 3.0, 4.0, 5.0})
-- {0.0, 0.25, 0.5, 0.75, 1.0}
local function rescale_to_unit(numbers)
    local min, max = math.huge, -math.huge
    for _, number in ipairs(numbers) do
        if number < min then
            min = number
        end
        if number > max then
            max = number
        end
    end
    local range = max - min
    return {
        (numbers[1] - min) / range,
        (numbers[2] - min) / range,
        (numbers[3] - min) / range,
        (numbers[4] - min) / range,
        (numbers[5] - min) / range
    }
end
print(rescale_to_unit({1.0, 2.0, 3.0, 4.0, 5.0}))
<|file_separator|> -- Given a table of numbers, return a table containing the same numbers, but in reverse order

lu = require('luaunit')

function test_humaneval()
local candidate = rescale_to_unit
    lu.assertEquals(candidate({2.0, 49.9}), {0.0, 1.0})
    lu.assertEquals(candidate({100.0, 49.9}), {1.0, 0.0})
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0}), {0.0, 0.25, 0.5, 0.75, 1.0})
    lu.assertEquals(candidate({2.0, 1.0, 5.0, 3.0, 4.0}), {0.25, 0.0, 1.0, 0.5, 0.75})
    lu.assertEquals(candidate({12.0, 11.0, 15.0, 13.0, 14.0}), {0.25, 0.0, 1.0, 0.5, 0.75})
end

os.exit(lu.LuaUnit.run())