-- From a supplied table of numbers (of length at least two) select and return two that are the closest to each
-- other and return them in order (smaller number, larger number).
-- >>> find_closest_elements({1.0, 2.0, 3.0, 4.0, 5.0, 2.2})
-- {2.0, 2.2}
-- >>> find_closest_elements({1.0, 2.0, 3.0, 4.0, 5.0, 2.0})
-- {2.0, 2.0}
local function find_closest_elements(numbers)
    local smallest_difference = math.huge
    local smallest_difference_index1 = 0
    local smallest_difference_index2 = 0
    for i = 1, #numbers - 1 do
        for j = i + 1, #numbers do
            local difference = math.abs(numbers[i] - numbers[j])
            if difference < smallest_difference then
                smallest_difference = difference
                smallest_difference_index1 = i
                smallest_difference_index2 = j
            end
        end
    end
    return {numbers[smallest_difference_index1], numbers[smallest_difference_index2]}
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_closest_elements
    lu.assertEquals(candidate({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}), {3.9, 4.0})
    lu.assertEquals(candidate({1.0, 2.0, 5.9, 4.0, 5.0}), {5.0, 5.9})
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0, 2.2}), {2.0, 2.2})
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}), {2.0, 2.0})
    lu.assertEquals(candidate({1.1, 2.2, 3.1, 4.1, 5.1}), {2.2, 3.1})
end

os.exit(lu.LuaUnit.run())