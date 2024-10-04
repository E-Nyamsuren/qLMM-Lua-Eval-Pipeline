-- From a supplied table of numbers (of length at least two) select and return two that are the closest to each
-- other and return them in order (smaller number, larger number).
-- >>> find_closest_elements({1.0, 2.0, 3.0, 4.0, 5.0, 2.2})
-- {2.0, 2.2}
-- >>> find_closest_elements({1.0, 2.0, 3.0, 4.0, 5.0, 2.0})
-- {2.0, 2.0}
local function find_closest_elements(numbers)
    local min_diff = nil
    local closest_pair = {}
    local sorted_numbers = {}
    for n in pairs(numbers) do
        table.insert(sorted_numbers, n)
    end
    table.sort(sorted_numbers)
    for i = 2, #sorted_numbers do
        local diff = sorted_numbers[i] - sorted_numbers[i - 1]
        if min_diff == nil or diff < min_diff then
            min_diff = diff
            closest_pair = {sorted_numbers[i - 1], sorted_numbers[i]}
        end
    end
    return closest_pair
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