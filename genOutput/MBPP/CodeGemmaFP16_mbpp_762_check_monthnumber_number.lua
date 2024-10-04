-- Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12.
local function check_monthnumber_number(monthnum3)
    if monthnum3 == 2 then
        print("28 or 29 days")
    elseif monthnum3 == 4 or monthnum3 == 6 or monthnum3 == 9 or monthnum3 == 11 then
        print("30 days")
    else
        print("31 days")
    end
end
check_monthnumber_number(2)
check_monthnumber_number(4)
check_monthnumber_number(6)
check_monthnumber_number(9)
check_monthnumber_number(11)
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = check_monthnumber_number
    lu.assertEquals(candidate(6), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(12), false)
end

os.exit(lu.LuaUnit.run())