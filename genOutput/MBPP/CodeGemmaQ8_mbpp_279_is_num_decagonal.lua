-- Write a function to find the nth decagonal number.
local function is_num_decagonal(n)
    local i = 1
    while true do
        local d = (10 * i - 1) * i / 2
        if d == n then
            return true
        elseif d > n then
            return false
        end
        i = i + 1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_num_decagonal
    lu.assertEquals(candidate(3), 27)
    lu.assertEquals(candidate(7), 175)
    lu.assertEquals(candidate(10), 370)
end

os.exit(lu.LuaUnit.run())