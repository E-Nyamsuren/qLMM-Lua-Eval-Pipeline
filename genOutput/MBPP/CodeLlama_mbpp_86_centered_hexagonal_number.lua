-- Write a function to find nth centered hexagonal number.
local function centered_hexagonal_number(n)
    local hexagonal_number = 1
    local centered_hexagonal_number = 1
    local i = 1
    while i <= n do
        hexagonal_number = hexagonal_number + 1
        if hexagonal_number % 2 == 0 then
            centered_hexagonal_number = centered_hexagonal_number + 1
        end
        i = i + 1
    end
    return centered_hexagonal_number
end

lu = require('luaunit')

function test_humaneval()
local candidate = centered_hexagonal_number
    lu.assertEquals(candidate(10), 271)
    lu.assertEquals(candidate(2), 7)
    lu.assertEquals(candidate(9), 217)
end

os.exit(lu.LuaUnit.run())