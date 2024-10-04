-- Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
local function is_polite(n)
    local digits = {}
    while n > 0 do
        local digit = n % 10
        table.insert(digits, digit)
        n = math.floor(n / 10)
    end
    table.sort(digits)
    local max_digit = digits[#digits]
    local min_digit = digits[1]
    return max_digit - min_digit == #digits - 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_polite
    lu.assertEquals(candidate(7), 11)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(9), 13)
end

os.exit(lu.LuaUnit.run())