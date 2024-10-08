-- I think we all remember that feeling when the result of some long-awaited
-- event is finally known. The feelings and thoughts you have at that moment are
-- definitely worth noting down and comparing.
-- Your task is to determine if a person correctly guessed the results of a number of matches.
-- You are given two tables of scores and guesses of equal length, where each index shows a match. 
-- Return a table of the same length denoting how far off each guess was. If they have guessed correctly,
-- the value is 0, and if not, the value is the absolute difference between the guess and the score.
-- example:
-- >>> compare({1, 2, 3, 4, 5, 1}, {1, 2, 3, 4, 2, -2})
-- {0, 0, 0, 0, 3, 3}
-- >>> compare({0, 5, 0, 0, 0, 4}, {4, 1, 1, 0, 0, -2})
-- {4, 4, 1, 0, 0, 6}
local function compare(game, guess)
    local result = {}
    for i = 1, #game do
        if game[i] == guess[i] then
            result[i] = 0
        else
            result[i] = math.abs(game[i] - guess[i])
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = compare
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 1}, {1, 2, 3, 4, 2, -2}), {0, 0, 0, 0, 3, 3})
    lu.assertEquals(candidate({0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}), {0, 0, 0, 0, 0, 0})
    lu.assertEquals(candidate({1, 2, 3}, {-1, -2, -3}), {2, 4, 6})
    lu.assertEquals(candidate({1, 2, 3, 5}, {-1, 2, 3, 4}), {2, 0, 0, 1})
end

os.exit(lu.LuaUnit.run())