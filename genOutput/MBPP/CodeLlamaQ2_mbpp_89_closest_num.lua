-- Write a function to find the closest smaller number than n.
local function closest_num(N)
    local n = N - 1
    while n > 0 do
        if n % 2 == 0 then
            return n
        end
        n = n - 1
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