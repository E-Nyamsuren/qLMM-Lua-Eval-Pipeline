
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
    --[[
    This function takes in the number of piles and the number of stones in each pile.
    It then determines the winner of the game.
    --]]
    local function max(a, b)
        return a > b and a or b
    end
    
    local function min(a, b)
        return a < b and a or b
    end
    
    local function helper(piles, i, j)
        if i == j then
            return piles[i]
        end
        
        local left = helper(piles, i + 1, j)
        local right = helper(piles, i, j - 1)
        
        return max(left, right)
    end
    
    local total = 0
    for _, v in ipairs(piles) do
        total = total + v
    end
    
    local expected = total / 2
    local result = helper(piles, 1, #piles)
    
    if result > expected then
        return "Charlie"
    else
        return "Dan"
    end
end

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