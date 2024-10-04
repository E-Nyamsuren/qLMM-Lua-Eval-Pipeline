-- Write a function to multiply two integers.
local function multiply_int(x, y)
    return x * y
end

lu = require('luaunit')

function test_humaneval()
local candidate = multiply_int
    lu.assertEquals(candidate(10, 20), 200)
    lu.assertEquals(candidate(5, 10), 50)
    lu.assertEquals(candidate(4, 8), 32)
end

os.exit(lu.LuaUnit.run())