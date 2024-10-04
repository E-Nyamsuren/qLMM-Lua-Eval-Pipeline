-- Write a luathon function to check whether the given number can be represented as the difference of two squares or not.
local function dif_Square(n)
    local i = 1
    while i <= n do
        local j = 1
        while j <= n then
            if (i * i - j * j) == n then
                return true
            end
            j = j + 1
        end
        i = i + 1
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = dif_Square
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(15), true)
end

os.exit(lu.LuaUnit.run())