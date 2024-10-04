-- Write a function to find nth centered hexagonal number.
local function centered_hexagonal_number(n)
    local hex_numbers = {}
    local hex_number = 1
    local hex_number_index = 1
    while hex_number_index <= n do
        hex_numbers[hex_number_index] = hex_number
        hex_number = hex_number + 6
        hex_number_index = hex_number_index + 1
    end
    return hex_numbers
end

lu = require('luaunit')

function test_humaneval()
local candidate = centered_hexagonal_number
    lu.assertEquals(candidate(10), 271)
    lu.assertEquals(candidate(2), 7)
    lu.assertEquals(candidate(9), 217)
end

os.exit(lu.LuaUnit.run())