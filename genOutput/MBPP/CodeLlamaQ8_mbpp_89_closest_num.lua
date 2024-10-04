-- Write a function to find the closest smaller number than n.
local function closest_num(N)
    local n = N
    while n > 0 do
        local m = n // 10
        if m * 10 + (n % 10) - n < n - m * 10 do
            n = m * 10
        else
            n = m * 10 + (n % 10)
        end
    end
    return n
end

lu = require('luaunit')

function test_humaneval()
local candidate = closest_num
    lu.assertEquals(candidate(11), 10)
    lu.assertEquals(candidate(7), 6)
    lu.assertEquals(candidate(12), 11)
end

os.exit(lu.LuaUnit.run())