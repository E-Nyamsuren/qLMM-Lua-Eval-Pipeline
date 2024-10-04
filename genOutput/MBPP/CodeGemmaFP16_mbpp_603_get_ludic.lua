-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
    local result = {}
    for i = 1, n do
        local sum = 0
        for j = 1, i do
            if i % j == 0 then
                sum = sum + j
            end
        end
        if sum == i then
            table.insert(result, i)
        end
    end
    return result
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = get_ludic
    lu.assertEquals(candidate(10), {1, 2, 3, 5, 7})
    lu.assertEquals(candidate(25), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25})
    lu.assertEquals(candidate(45), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43})
end

os.exit(lu.LuaUnit.run())