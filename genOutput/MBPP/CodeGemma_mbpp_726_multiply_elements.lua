-- Write a function that takes as input a table of numbers (t_1,...,t_{N+1}) and returns a table of length N where the i-th element of the table is equal to t_i * t_{i+1}.
local function multiply_elements(test_tup)
    local new_tup = {}
    for i = 1, #test_tup - 1 do
        new_tup[i] = test_tup[i] * test_tup[i + 1]
    end
    return new_tup
end

lu = require('luaunit')

function test_humaneval()
local candidate = multiply_elements
    lu.assertEquals(candidate({1, 5, 7, 8, 10}), {5, 35, 56, 80})
    lu.assertEquals(candidate({2, 4, 5, 6, 7}), {8, 20, 30, 42})
    lu.assertEquals(candidate({12, 13, 14, 9, 15}), {156, 182, 126, 135})
    lu.assertEquals(candidate({12}), {})
end

os.exit(lu.LuaUnit.run())