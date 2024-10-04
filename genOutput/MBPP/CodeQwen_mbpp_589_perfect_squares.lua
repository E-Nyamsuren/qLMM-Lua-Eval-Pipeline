-- Write a function to find perfect squares between two given numbers.
local function perfect_squares(a, b)
    local squares = {}
    for i = a, b do
        local sqrt = math.sqrt(i)
        if sqrt == math.floor(sqrt) then
            table.insert(squares, i)
        end
    end
    return squares
end

lu = require('luaunit')

function test_humaneval()
local candidate = perfect_squares
    lu.assertEquals(candidate(1, 30), {1, 4, 9, 16, 25})
    lu.assertEquals(candidate(50, 100), {64, 81, 100})
    lu.assertEquals(candidate(100, 200), {100, 121, 144, 169, 196})
end

os.exit(lu.LuaUnit.run())