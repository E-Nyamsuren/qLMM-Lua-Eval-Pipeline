lu = require('luaunit')

function testFindLongestConsecutiveOnesLength()
    local candidate = find_longest_consecutive_ones_length
    lu.assertTrue(candidate(7) == 3)
    lu.assertTrue(candidate(13) == 2)
    lu.assertTrue(candidate(12345) == 3)
    -- lu.assertTrue(candidate(0xb111101111) == 4)
    lu.assertTrue(candidate(0xFFFFFFFF) == 32)
    lu.assertTrue(candidate(0) == 0)

    -- Uncomment the following line to print a success message
    -- print("All tests passed!")
end

os.exit(lu.LuaUnit.run())