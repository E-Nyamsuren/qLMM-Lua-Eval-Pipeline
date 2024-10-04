
--[[
Count the number of valid coin toss sequences with no consecutive heads in n tosses.

Parameters:
- n (int): The number of coin toss sequences.

Returns:
unsigned long long: The count of valid sequences.

Examples:
extraNumber(1) -- returns 2
extraNumber(2) -- returns 3
]]
function count_valid_coin_toss_sequences(n)
    if n == 1 then
        return 2
    elseif n == 2 then
        return 3
    else
        local sequences = 0
        for i = 1, n do
            local toss = math.random(2)
            if toss == 1 then
                sequences = sequences + 1
            else
                sequences = sequences + 2
            end
        end
        return sequences
    end
end

lu = require('luaunit')

function testCountValidCoinTossSequences()
    local candidate = count_valid_coin_toss_sequences
    lu.assertTrue(candidate(1) == 2)
    lu.assertTrue(candidate(2) == 3)
    lu.assertTrue(candidate(3) == 5)
    lu.assertTrue(candidate(4) == 8) -- Additional test
    lu.assertTrue(candidate(5) == 13) -- Additional test
    -- Feel free to add more tests here
    lu.assertTrue(candidate(40) == 267914296) -- Additional test
    lu.assertTrue(candidate(39) == 165580141)
    lu.assertTrue(candidate(38) == 102334155)
    -- print("All tests passed!")
end

os.exit(lu.LuaUnit.run())