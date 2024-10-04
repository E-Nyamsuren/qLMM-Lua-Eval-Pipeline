-- Write a function to check whether the given month number contains 31 days or not.
local function check_monthnumb_number(monthnum2)
    if monthnum2 == 1 or monthnum2 == 3 or monthnum2 == 5 or monthnum2 == 7 or monthnum2 == 8 or monthnum2 == 10 or monthnum2 == 12 then
        return true
    else
        return false
    end
end
print(check_monthnumb_number(1)) -- true
print(check_monthnumb_number(2)) -- false
print(check_monthnumb_number(4)) -- false
print(check_monthnumb_number(7)) -- true
print(check_monthnumb_number(11)) -- false
print(check_monthnumb_number(12)) -- true

lu = require('luaunit')

function test_humaneval()
local candidate = check_monthnumb_number
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(6), false)
end

os.exit(lu.LuaUnit.run())