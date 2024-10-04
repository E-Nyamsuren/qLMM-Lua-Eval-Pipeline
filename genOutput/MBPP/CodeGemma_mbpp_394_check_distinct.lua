-- Write a function to check if given table contains no duplicates.
local function check_distinct(test_tup)
    local distinct = true
    for i = 1, #test_tup do
        for j = i + 1, #test_tup do
            if test_tup[i] == test_tup[j] then
                distinct = false
            end
        end
    end
    return distinct
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_distinct
    lu.assertEquals(candidate({1, 4, 5, 6, 1, 4}), false)
    lu.assertEquals(candidate({1, 4, 5, 6}), true)
    lu.assertEquals(candidate({2, 3, 4, 5, 6}), true)
end

os.exit(lu.LuaUnit.run())