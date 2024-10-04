-- Write a luathon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
local function find_Index(n)
    local count = 0
    local num = 0
    while count < n do
        count = count + 1
        num = num + count
        if num > 999999999 then
            num = num - 1000000000
        end
    end
    return num
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Index
    lu.assertEquals(candidate(2), 4)
    lu.assertEquals(candidate(3), 14)
    lu.assertEquals(candidate(4), 45)
end

os.exit(lu.LuaUnit.run())