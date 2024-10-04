-- Write a luathon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
local function find_Index(n)
    local i = 1
    local j = 1
    while true do
        local k = i * (i + 1) / 2
        if #tostring(k) == n then
            return j
        end
        i = i + 1
        j = j + 1
    end
end
print(find_Index(3))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = find_Index
    lu.assertEquals(candidate(2), 4)
    lu.assertEquals(candidate(3), 14)
    lu.assertEquals(candidate(4), 45)
end

os.exit(lu.LuaUnit.run())