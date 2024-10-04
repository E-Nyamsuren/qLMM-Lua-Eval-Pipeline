-- Write a function to find the median length of a trapezium.
local function median_trapezium(base1, base2, height)
    return (base1 + base2) * height / 2
end

lu = require('luaunit')

function test_humaneval()
local candidate = median_trapezium
    lu.assertEquals(candidate(15, 25, 35), 20)
    lu.assertEquals(candidate(10, 20, 30), 15)
    lu.assertEquals(candidate(6, 9, 4), 7.5)
end

os.exit(lu.LuaUnit.run())