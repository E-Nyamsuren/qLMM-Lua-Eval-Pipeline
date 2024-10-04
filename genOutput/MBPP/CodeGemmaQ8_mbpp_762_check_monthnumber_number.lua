-- Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12.
local function check_monthnumber_number(monthnum3)
    if monthnum3 == 4 or monthnum3 == 6 or monthnum3 == 9 or monthnum3 == 11 then
        print("The month number " .. monthnum3 .. " contains 30 days.")
    else
        print("The month number " .. monthnum3 .. " does not contain 30 days.")
    end
end
check_monthnumber_number(4)
check_monthnumber_number(6)
check_monthnumber_number(9)
check_monthnumber_number(11)
check_monthnumber_number(12)
check_monthnumber_number(1)
check_monthnumber_number(2)
check_monthnumber_number(3)
check_monthnumber_number(5)
check_monthnumber_number(7)
check_monthnumber_number(8)
check_monthnumber_number(10)
check_monthnumber_number(13)
check_monthnumber_number(0)
check_monthnumber_number(-1)
check_monthnumber_number(1.5)
check_monthnumber_number("1")
check_monthnumber_number(true)
check_monthnumber_number(false)
check_monthnumber_number(nil)
check_monthnumber_number(function() end)
check_monthnumber_number({})
check_monthnumber_number({1, 2, 3})
check_monthnumber_number({a = 1, b = 2, c = 3})
check_monthnumber_number({a = 1, b = 2, c = 3, d = 4})
check_monthnumber_number({a = 1, b = 2, c = 3, d = 4, e = 5})
check_monthnumber_number({a = 1, b = 2, c = 3, d = 4, e = 5, f = 6})
check_monthnumber_number({a = 1, b = 2, c

lu = require('luaunit')

function test_humaneval()
local candidate = check_monthnumber_number
    lu.assertEquals(candidate(6), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(12), false)
end

os.exit(lu.LuaUnit.run())