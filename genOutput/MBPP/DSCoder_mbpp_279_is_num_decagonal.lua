-- Write a function to find the nth decagonal number.
local function is_num_decagonal(n)
    local i = 1
    local num = 1
    while true do
        if num == n then
            return true
        elseif num > n then
            return false
        end
        i = i + 1
        num = num + i * 9
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