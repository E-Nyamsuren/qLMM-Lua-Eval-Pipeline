-- Given table of numbers (of at least two elements), apply a linear transform to that table,
-- such that the smallest number will become 0 and the largest will become 1
-- >>> rescale_to_unit({1.0, 2.0, 3.0, 4.0, 5.0})
-- {0.0, 0.25, 0.5, 0.75, 1.0}
local function rescale_to_unit(numbers)
    local min_num = math.huge
    local max_num = -math.huge
    for _, num in ipairs(numbers) do
        if num < min_num then
            min_num = num
        end
        if num > max_num then
            max_num = num
        end
    end
    local range = max_num - min_num
    local rescaled_numbers = {}
    for _, num in ipairs(numbers) do
        table.insert(rescaled_numbers, (num - min_num) / range)
    end
    return rescaled_numbers
end
print(rescale_to_unit({1.0, 2.0, 3.0, 4.0, 5.0})) -- {0.0, 0.25, 0.5, 0.75, 1.0}
print(rescale_to_unit({10.0, 20.0, 30.0, 40.0, 50.0})) -- {0.0, 0.25, 0.5, 0.75, 1.0}
print(rescale_to_unit({-5.0, 0.0, 5.0, 10.0})) -- {0.0, 0.3333333333333333, 0.6666666666666666, 1.0}
print(rescale_to_unit({0.0, 0.0, 0.0, 0.0})) -- {0.0, 0.0, 0.0, 0.0}
print(rescale_to_unit({100.0})) -- {0.0}


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