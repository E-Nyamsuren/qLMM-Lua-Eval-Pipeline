-- Write a luathon function to convert complex numbers to polar coordinates.
local function convert(numbers)

    -- Check if the input is a table
    if type(numbers) ~= "table" then
        return nil, "Input must be a table"
    end

lu = require('luaunit')

function test_humaneval()
local candidate = convert
    lu.assertEquals(candidate(1), {1.0, 0.0})
    lu.assertEquals(candidate(4), {4.0, 0.0})
    lu.assertEquals(candidate(5), {5.0, 0.0})
end

os.exit(lu.LuaUnit.run())