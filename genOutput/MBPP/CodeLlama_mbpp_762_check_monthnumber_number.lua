-- Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12.
local function check_monthnumber_number(monthnum3)
    if monthnum3 == 1 or monthnum3 == 3 or monthnum3 == 5 or monthnum3 == 7 or monthnum3 == 8 or monthnum3 == 10 or monthnum3 == 12 then
        return 30
    elseif monthnum3 == 4 or monthnum3 == 6 or monthnum3 == 9 or monthnum3 == 11 then
        return 31
    else
        return 28
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_monthnumber_number
    lu.assertEquals(candidate(6), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(12), false)
end

os.exit(lu.LuaUnit.run())