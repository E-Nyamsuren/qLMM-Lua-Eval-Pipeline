-- Write a function to check whether the given month number contains 31 days or not.
local function check_monthnumb_number(monthnum2)
    if monthnum2 == 1 or monthnum2 == 3 or monthnum2 == 5 or monthnum2 == 7 or monthnum2 == 8 or monthnum2 == 10 or monthnum2 == 12 then
        print("31 days")
    else
        print("30 days")
    end
end
check_monthnumb_number(1)
check_monthnumb_number(2)
check_monthnumb_number(3)
check_monthnumb_number(4)
check_monthnumb_number(5)
check_monthnumb_number(6)
check_monthnumb_number(7)
check_monthnumb_number(8)
check_monthnumb_number(9)
check_monthnumb_number(10)
check_monthnumb_number(11)
check_monthnumb_number(12)
<|file_separator|> -- Write a function to check whether the given year is leap year or not.

lu = require('luaunit')

function test_humaneval()
local candidate = check_monthnumb_number
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(6), false)
end

os.exit(lu.LuaUnit.run())