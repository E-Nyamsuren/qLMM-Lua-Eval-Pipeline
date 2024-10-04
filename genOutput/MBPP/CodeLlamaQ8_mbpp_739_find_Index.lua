-- Write a luathon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
local function find_Index(n)
    local triangular_number = 0
    local index = 0
    local i = 1
    local j = 1
    local k = 1
    while i <= n do
        triangular_number = triangular_number + 1
        index = index + 1
        i = i + 1
        j = j + 1
        k = k + 1
        if triangular_number == index then
            return index
        end
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Index
    lu.assertEquals(candidate(2), 4)
    lu.assertEquals(candidate(3), 14)
    lu.assertEquals(candidate(4), 45)
end

os.exit(lu.LuaUnit.run())