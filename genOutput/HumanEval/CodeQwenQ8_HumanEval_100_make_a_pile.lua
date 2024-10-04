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
    local current_stones = n
    for i = 1, n do
        stones[i] = current_stones
        if n % 2 == 0 then
            current_stones = current_stones + 2
        else
            current_stones = current_stones + 2
        end
    end
    return stones
end
print(make_a_pile(3)) -- {3, 5, 7}
print(make_a_pile(4)) -- {4, 6, 8, 10}
print(make_a_pile(5)) -- {5, 7, 9, 11, 13}
print(make_a_pile(6)) -- {6, 8, 10, 12, 14, 16}
print(make_a_pile(7)) -- {7, 9, 11, 13, 15, 17, 19}
print(make_a_pile(8)) -- {8, 10, 12, 14, 16, 18, 20, 22}
print(make_a_pile(9)) -- {9, 11, 13, 15, 17, 19, 21, 23, 25}
print(make_a_pile(10)) -- {10, 12, 14, 16, 18, 20, 22, 24, 26, 28}
print(make_a_pile(11)) -- {11, 13, 15,

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