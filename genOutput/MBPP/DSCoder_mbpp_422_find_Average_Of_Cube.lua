-- Write a luathon function to find the average of cubes of first n natural numbers.
local function find_Average_Of_Cube(n)
    local sum = 0
    for i = 1, n do
        sum = sum + (i^3)
    end
    return sum / n
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Average_Of_Cube
    lu.assertEquals(candidate(2), 4.5)
    lu.assertEquals(candidate(3), 12)
    lu.assertEquals(candidate(1), 1)
end

os.exit(lu.LuaUnit.run())