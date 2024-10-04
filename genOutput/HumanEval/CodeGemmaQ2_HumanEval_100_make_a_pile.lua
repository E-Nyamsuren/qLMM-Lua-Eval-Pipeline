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
 vagu suspicam embra embra
 embra embe
    local i suspicam
 embra embe
    local i embra
    local i
 embra embe embra embe embra embe embra embra embra embra embra embra embe embra embra embe embra embra embra embra embra embra embra embra embe embra embra embra embra embra embra embra embra embra embra embra embra embe embra embra embra embe embra embe embra embra embe embra embe embe embe embe embra embra embe embra embra embra embra embra embra embra embra embra embra embra embe embra embra embra embra embra embe embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embe embra embe embra embra embe embe embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embe embe embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embe embra embe embra embra embra embra embra embra embra embra embra embra embe embra embra embe embe embra embra embra embra embra embra embra embra embra embra embra embra embra embra embe embra embra embra embe embra embra embra embra embra embra embra embra embra embe embra embra embra embra embra embra embra embra embra embra embra embe embra embra embra embra embra embra embra embra embra embra embe embra embra embra embra embra embra embra embra embra embra embe embra embra embra embra embra embe embe embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embe embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embe embra embra embra embra embra embra embra embra embra embra embra embra embra embra embra embe embra embra embra embra embra embra embra embra embra embra embra embe em

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