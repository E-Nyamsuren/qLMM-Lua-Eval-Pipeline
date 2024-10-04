-- Write a luathon function to find the smallest missing number from a sorted table of natural numbers.
local function find_First_Missing(array)
    local missing_number = 1
    for i = 1, #array do
        if array[i] == missing_number then
            missing_number = missing_number + 1
        end
    end
    return missing_number
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_First_Missing
    lu.assertEquals(candidate({0, 1, 2, 3}), 4)
    lu.assertEquals(candidate({0, 1, 2, 6, 9}), 3)
    lu.assertEquals(candidate({2, 3, 5, 8, 9}), 0)
end

os.exit(lu.LuaUnit.run())