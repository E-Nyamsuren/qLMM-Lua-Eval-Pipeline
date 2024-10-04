-- Write a function to find perfect squares between two given numbers.
local function perfect_squares(a, b)
    local result = {}
    for i = math.ceil(math.sqrt(a)), math.floor(math.sqrt(b)) do
        table.insert(result, i*i)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = perfect_squares
    lu.assertEquals(candidate(1, 30), {1, 4, 9, 16, 25})
    lu.assertEquals(candidate(50, 100), {64, 81, 100})
    lu.assertEquals(candidate(100, 200), {100, 121, 144, 169, 196})
end

os.exit(lu.LuaUnit.run())