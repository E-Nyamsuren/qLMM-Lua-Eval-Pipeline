-- Write a luathon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
local function find_Index(n)
    -- The smallest triangular number with n digits will be 10^(n-1)*(n+1)/2.
    -- So, the index will be (10^(n-1)*(n+1))/2 - 1.
    return math.floor((math.pow(10, n-1) * (n + 1)) / 2) - 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Index
    lu.assertEquals(candidate(2), 4)
    lu.assertEquals(candidate(3), 14)
    lu.assertEquals(candidate(4), 45)
end

os.exit(lu.LuaUnit.run())