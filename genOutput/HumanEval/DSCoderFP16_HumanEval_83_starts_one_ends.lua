-- Given a positive integer n, return the count of the numbers of n-digit
-- positive integers that start or end with 1.
local function starts_one_ends(n)
    local count = 0
    local start = 1 * math.pow(10, n - 1)
    local end_num = 10^n - 1
    for i = start, end_num do
        local str_i = tostring(i)
        if str_i:sub(1, 1) == '1' or str_i:sub(-1, -1) == '1' then
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = starts_one_ends
    lu.assertEquals(candidate(1), 1)
    lu.assertEquals(candidate(2), 18)
    lu.assertEquals(candidate(3), 180)
    lu.assertEquals(candidate(4), 1800)
    lu.assertEquals(candidate(5), 18000)
end

os.exit(lu.LuaUnit.run())