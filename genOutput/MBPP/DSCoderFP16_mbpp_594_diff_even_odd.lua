-- Write a function to find the difference of the first even and first odd number of a given table.
local function diff_even_odd(list1)
    local even_numbers = {}
    local odd_numbers = {}
    for i, v in ipairs(list1) do
        if v % 2 == 0 then
            table.insert(even_numbers, v)
        else
            table.insert(odd_numbers, v)
        end
    end
    if #even_numbers > 0 and #odd_numbers > 0 then
        return even_numbers[1] - odd_numbers[1]
    else
        return 0
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = diff_even_odd
    lu.assertEquals(candidate({1, 3, 5, 7, 4, 1, 6, 8}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), 1)
    lu.assertEquals(candidate({1, 5, 7, 9, 10}), 9)
end

os.exit(lu.LuaUnit.run())