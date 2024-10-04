-- Write a function to find minimum of three numbers.
local function min_of_three(a, b, c)

    -- Check if the inputs are numbers
    if type(a) ~= 'number' or type(b) ~= 'number' or type(c) ~= 'number' then
        error('Inputs must be numbers')
    end

lu = require('luaunit')

function test_humaneval()
local candidate = min_of_three
    lu.assertEquals(candidate(10, 20, 0), 0)
    lu.assertEquals(candidate(19, 15, 18), 15)
    lu.assertEquals(candidate(-10, -20, -30), -30)
end

os.exit(lu.LuaUnit.run())