-- Write a function to find the nth octagonal number.
local function is_octagonal(n)
    local i = 1
    while true do
        local num = i*(7*i-5)//2
        if num == n then return true end
        if num > n then return false end
        i = i + 1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_octagonal
    lu.assertEquals(candidate(5), 65)
    lu.assertEquals(candidate(10), 280)
    lu.assertEquals(candidate(15), 645)
end

os.exit(lu.LuaUnit.run())