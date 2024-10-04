-- Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12.
local function check_monthnumber_number(monthnum3)
    if monthnum3 == 4 or monthnum3 == 6 or monthnum3 == 9 or monthnum3 == 11 then
        return true
    else
        return false
    end
end
print(check_monthnumber_number(4)) -- true
print(check_monthnumber_number(7)) -- false
print(check_monthnumber_number(11)) -- true
print(check_monthnumber_number(2)) -- false
print(check_monthnumber_number(12)) -- false
print(check_monthnumber_number(1)) -- false
print(check_monthnumber_number(5)) -- false
print(check_monthnumber_number(3)) -- false
print(check_monthnumber_number(6)) -- true
print(check_monthnumber_number(8)) -- false
print(check_monthnumber_number(10)) -- false
print(check_monthnumber_number(7)) -- false
print(check_monthnumber_number(9)) -- true
print(check_monthnumber_number(5)) -- false
print(check_monthnumber_number(2)) -- false
print(check_monthnumber_number(1)) -- false
print(check_monthnumber_number(3)) -- false
print(check_monthnumber_number(4)) -- true
print(check_monthnumber_number(6)) -- true
print(check_monthnumber_number(8)) -- false
print(check_monthnumber_number(10)) -- false
print(check_monthnumber_number(12)) -- false
print(check_monthnumber_number(7)) -- false
print(check_monthnumber_number(9)) -- true
print(check_monthnumber_number(5)) -- false
print(check_monthnumber_number(2)) -- false
print(check_monthnumber_number(1)) -- false
print(check_monthnumber_number(3)) -- false
print(check_monthnumber_number(4)) -- true
print(check_monthnumber_number(6)) -- true

lu = require('luaunit')

function test_humaneval()
local candidate = check_monthnumber_number
    lu.assertEquals(candidate(6), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(12), false)
end

os.exit(lu.LuaUnit.run())