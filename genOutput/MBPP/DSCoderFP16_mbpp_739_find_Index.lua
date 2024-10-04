-- Write a luathon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
local function find_Index(n)
    local i = 1
    local triangular_numbers = {}
    while true do
        local triangular_number = math.floor(i * (i + 1) / 2)
        if string.len(tostring(triangular_number)) == n then
            table.insert(triangular_numbers, {number = triangular_number, index = i})
        end
        if #triangular_numbers == n then
            break
        end
        i = i + 1
    end
    table.sort(triangular_numbers, function(a, b) return a.number < b.number end)
    return triangular_numbers[1].index
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Index
    lu.assertEquals(candidate(2), 4)
    lu.assertEquals(candidate(3), 14)
    lu.assertEquals(candidate(4), 45)
end

os.exit(lu.LuaUnit.run())