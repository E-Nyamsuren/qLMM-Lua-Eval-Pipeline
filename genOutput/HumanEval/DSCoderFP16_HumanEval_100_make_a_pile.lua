-- Given a positive integer n, you have to make a pile of n levels of stones.
-- The first level has n stones.
-- The number of stones in the next level is:
--     - the next odd number if n is odd.
--     - the next even number if n is even.
-- Return the number of stones in each level in a table, where element at index
-- i represents the number of stones in the level (i+1).
-- Examples:
-- >>> make_a_pile(3)
-- {3, 5, 7}
local function make_a_pile(n)
    local stones = {}
    for i = 1, n do
        if n % 2 == 0 then
            table.insert(stones, n + 2 * i)
        else
            table.insert(stones, n + 2 * i - 1)
        end
    end
    return stones
end

lu = require('luaunit')

function test_humaneval()
local candidate = make_a_pile
    lu.assertEquals(candidate(3), {3, 5, 7})
    lu.assertEquals(candidate(4), {4, 6, 8, 10})
    lu.assertEquals(candidate(5), {5, 7, 9, 11, 13})
    lu.assertEquals(candidate(6), {6, 8, 10, 12, 14, 16})
    lu.assertEquals(candidate(8), {8, 10, 12, 14, 16, 18, 20, 22})
end

os.exit(lu.LuaUnit.run())