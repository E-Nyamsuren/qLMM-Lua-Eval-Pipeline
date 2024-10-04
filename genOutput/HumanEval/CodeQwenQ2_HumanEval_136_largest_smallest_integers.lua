-- Create a function that returns a table (a, b), where 'a' is
-- the largest of negative integers, and 'b' is the smallest
-- of positive integers in a table.
-- If there is no negative or positive integers, return them as nil.
-- Examples:
-- >>> largest_smallest_integers({2, 4, 1, 3, 5, 7})
-- {None, 1}
-- >>> largest_smallest_integers({})
-- {None, None}
-- >>> largest_smallest_integers({0})
-- {None, None}
local function largest_smallest_integers(lst)
    local max_neg, min_pos = nil, nil
    for _, v in ipairs(lst) do
        if v < 0 then
            if max_neg == nil or v > max_neg then
                max_neg = v
            end
        elseif v > 0 then
            if min_pos == nil or v < min_pos then
                min_pos = v
            end
        end
    end
    return {max_neg, min_pos}
end

lu = require('luaunit')

function test_humaneval()
local candidate = largest_smallest_integers
    lu.assertEquals(candidate({2, 4, 1, 3, 5, 7}), {None, 1})
    lu.assertEquals(candidate({2, 4, 1, 3, 5, 7, 0}), {None, 1})
    lu.assertEquals(candidate({1, 3, 2, 4, 5, 6, -2}), {-2, 1})
    lu.assertEquals(candidate({4, 5, 3, 6, 2, 7, -7}), {-7, 2})
    lu.assertEquals(candidate({7, 3, 8, 4, 9, 2, 5, -9}), {-9, 2})
    lu.assertEquals(candidate({}), {None, None})
    lu.assertEquals(candidate({0}), {None, None})
    lu.assertEquals(candidate({-1, -3, -5, -6}), {-1, None})
    lu.assertEquals(candidate({-1, -3, -5, -6, 0}), {-1, None})
    lu.assertEquals(candidate({-6, -4, -4, -3, 1}), {-3, 1})
    lu.assertEquals(candidate({-6, -4, -4, -3, -100, 1}), {-3, 1})
end

os.exit(lu.LuaUnit.run())