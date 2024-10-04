
--[[
Given a sequence of N piles of stones numbered from 1 to N,
with each pile containing a positive number of stones, determine 
the winner of a game played by Charlie and Dan. Charlie goes first, 
and they take turns moving a positive number of stones from the 
leftmost non-empty pile to the adjacent right pile. The player who 
can only move stones in the last pile loses. Assuming both players 
use the best possible strategy, find out who will win the game.

    >>> gameWinner(3, {1, 2, 2})
    "Dan"
--]]
function gameWinner(n, piles)
    if n == 1 then
        return "Dan"
    end
    if n == 2 then
        return "Charlie"
    end
    if n == 3 then
        return "Dan"
    end
    if n == 4 then
        return "Charlie"
    end
    if n == 5 then
        return "Dan"
    end
    if n == 6 then
        return "Charlie"
    end
    if n == 7 then
        return "Dan"
    end
    if n == 8 then
        return "Charlie"
    end
    if n == 9 then
        return "Dan"
    end
    if n == 10 then
        return "Charlie"
    end
    if n == 11 then
        return "Dan"
    end
    if n == 12 then
        return "Charlie"
    end
    if n == 13 then
        return "Dan"
    end
    if n == 14 then
        return "Charlie"
    end
    if n == 15 then
        return "Dan"
    end
    if n == 16 then
        return "Charlie"
    end
    if n == 17 then
        return "Dan"
    end
    if n == 18 then
        return "Charlie"
    end
    if n == 19 then
        return "Dan"
    end
    if n == 20 then
        return "Charlie"
    end
    if n == 21 then
        return "Dan"

lu = require('luaunit')

function testGameWinner()
    local candidate = gameWinner
    lu.assertTrue(candidate(3, {1, 2, 2}) == "Dan")
    lu.assertTrue(candidate(5, {5, 5, 5, 5, 5}) == "Charlie")
    lu.assertTrue(candidate(3, {2, 1, 2}) == "Charlie")
    lu.assertTrue(candidate(4, {3, 3, 3, 3}) == "Charlie")
    lu.assertTrue(candidate(2, {1, 1}) == "Charlie")
    lu.assertTrue(candidate(2, {2, 1}) == "Charlie")
    lu.assertTrue(candidate(11, {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}) == "Dan")
    lu.assertTrue(candidate(10, {2, 2, 2, 2, 2, 2, 2, 2, 2, 1}) == "Charlie")
    lu.assertTrue(candidate(10, {10, 10, 10, 10, 10, 10, 10, 10, 10, 10}) == "Charlie")
    lu.assertTrue(candidate(10, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}) == "Dan")
end

os.exit(lu.LuaUnit.run())