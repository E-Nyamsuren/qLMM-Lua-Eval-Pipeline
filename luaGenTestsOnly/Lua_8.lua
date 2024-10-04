lu = require('luaunit')

function test_hamming_distance()
    local candidate = hamming_distance
    lu.assertTrue(candidate(1, 2) == 2) -- 01 and 10 have 2 different bits
    lu.assertTrue(candidate(4, 7) == 2) -- 100 and 111 have 2 different bits
    lu.assertTrue(candidate(25, 30) == 3) -- Additional test: 11001 and 11110 have 3 different bits
    lu.assertTrue(candidate(0, 0) == 0) -- Additional test: Same numbers have 0 different bits
    lu.assertTrue(candidate(0xFFFFFFF, 0x0000000) == 28) -- Additional test: Max unsigned int and 0 have 32 different bits
end

os.exit(lu.LuaUnit.run())