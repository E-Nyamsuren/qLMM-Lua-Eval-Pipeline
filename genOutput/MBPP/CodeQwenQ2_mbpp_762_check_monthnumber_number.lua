-- Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12.
local function check_monthnumber_number(monthnum3)
    if monthnum3 == 4 or monthnum3 == 6 or monthnum3 == 9 or monthnum3 == 11 then
        return true
    else
        return false
    end
end
print(check_monthnumber_number(4)) -- Expected output: true
print(check_monthnumber_number(7)) -- Expected output: false
print(check_monthnumber_number(11)) -- Expected output: true
print(check_monthnumber_number(2)) -- Expected output: false

lu = require('luaunit')

function test_humaneval()
local candidate = check_monthnumber_number
    lu.assertEquals(candidate(6), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(12), false)
end

os.exit(lu.LuaUnit.run())