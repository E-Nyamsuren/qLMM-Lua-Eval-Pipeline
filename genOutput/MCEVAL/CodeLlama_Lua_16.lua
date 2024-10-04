
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
    -- Valid sequences:
    -- 1. H
    -- 2. T
    -- 3. TH
    -- 4. HT
    -- 5. TT
    -- 6. TTH
    -- 7. HTT
    -- 8. TTTH
    -- 9. TTHT
    -- 10. TTT
    -- 11. TTTHH
    -- 12. TTHTT
    -- 13. TTTHT
    -- 14. TTTT
    -- 15. TTTTH
    -- 16. TTTHT
    -- 17. TTTTT
    -- 18. TTTTTH
    -- 19. TTTTHT
    -- 20. TTTTTT
    -- 21. TTTTTTH
    -- 22. TTTTTHT
    -- 23. TTTTTTT
    -- 24. TTTTTTTH
    -- 25. TTTTTTHT
    -- 26. TTTTTTTT
    -- 27. TTTTTTTTH
    -- 28. TTTTTTTHT
    -- 29. TTTTTTTTT
    -- 30. TTTTTTTTTH
    -- 31. TTTTTTTTHT
    -- 32. TTTTTTTTTT
    -- 33. TTTTTTTTTTH
    -- 34. TTTTTTTTTHT
    -- 35. TTTTTTTTTTT
    -- 36. TTTTTTTTTTTH
    -- 37. TTTTTTTTTTHT
    -- 38. TTTTTTT

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