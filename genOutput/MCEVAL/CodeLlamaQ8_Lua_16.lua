
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
    -- 1. HH
    -- 2. HT
    -- 3. TH
    -- 4. TT
    -- 5. HHH
    -- 6. HHT
    -- 7. HTH
    -- 8. HTT
    -- 9. THH
    -- 10. THT
    -- 11. TTH
    -- 12. TTT
    -- 13. HHHH
    -- 14. HHHT
    -- 15. HHTH
    -- 16. HHTT
    -- 17. HTHH
    -- 18. HTHT
    -- 19. HTTH
    -- 20. HTTT
    -- 21. THHH
    -- 22. THHT
    -- 23. THTH
    -- 24. THTT
    -- 25. TTHH
    -- 26. TTHHT
    -- 27. TTHTH
    -- 28. TTHTT
    -- 29. TTTHH
    -- 30. TTTHHT
    -- 31. TTTHTH
    -- 32. TTTHTT
    -- 33. TTTTTH
    -- 34. TTTTHT
    -- 35. TTTTTH
    -- 36. TTTTHT
    -- 37. TTTTTH
    -- 38. TTTTHT
    -- 39. TTTTTH
    -- 40. TTTTHT
    -- 41. TTTTTH
    -- 42. TTTTHT


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