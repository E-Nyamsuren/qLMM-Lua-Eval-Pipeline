-- Write a function to find the area of a rectangle.
local function rectangle_area(l, b)

    -- Check if the inputs are numbers
    if type(l) ~= "number" or type(b) ~= "number" then
        return "Error: Both inputs must be numbers."
    end

lu = require('luaunit')

function test_humaneval()
local candidate = rectangle_area
    lu.assertEquals(candidate(10, 20), 200)
    lu.assertEquals(candidate(10, 5), 50)
    lu.assertEquals(candidate(4, 2), 8)
end

os.exit(lu.LuaUnit.run())