-- Given a positive integer n, return a sorted table that has the odd numbers in collatz sequence.
-- The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
-- as follows: start with any positive integer n. Then each term is obtained from the 
-- previous term as follows: if the previous term is even, the next term is one half of 
-- the previous term. If the previous term is odd, the next term is 3 times the previous
-- term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
-- Note: 
--     1. Collatz(1) is [1].
--     2. returned table sorted in increasing order.
-- For example:
-- get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
-- >>> get_odd_collatz(5)
-- {1, 5}
local function get_odd_collatz(n)
    local result = {}
    local function helper(n)
        if n == 1 then
            return
        end
        if n % 2 == 0 then
            helper(n / 2)
        else
            table.insert(result, n)
            helper(3 * n + 1)
        end
    end
    helper(n)
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_odd_collatz
    lu.assertEquals(candidate(14), {1, 5, 7, 11, 13, 17})
    lu.assertEquals(candidate(5), {1, 5})
    lu.assertEquals(candidate(12), {1, 3, 5})
    lu.assertEquals(candidate(1), {1})
end

os.exit(lu.LuaUnit.run())