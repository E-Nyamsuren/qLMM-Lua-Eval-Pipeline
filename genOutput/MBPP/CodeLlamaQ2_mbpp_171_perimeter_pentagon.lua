-- Write a function to find the perimeter of a regular pentagon from the length of its sides.
local function perimeter_pentagon(a)
    return a * 5
end

lu = require('luaunit')

function test_humaneval()
local candidate = perimeter_pentagon
    lu.assertEquals(candidate(5), 25)
    lu.assertEquals(candidate(10), 50)
    lu.assertEquals(candidate(15), 75)
end

os.exit(lu.LuaUnit.run())