-- Write a luathon function to find the cube sum of first n even natural numbers.
local function cube_Sum(n)
    local sum = 0
    for i = 1, n do
        local even_number = 2 * i
        sum = sum + even_number ^ 3
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = cube_Sum
    lu.assertEquals(candidate(2), 72)
    lu.assertEquals(candidate(3), 288)
    lu.assertEquals(candidate(4), 800)
end

os.exit(lu.LuaUnit.run())