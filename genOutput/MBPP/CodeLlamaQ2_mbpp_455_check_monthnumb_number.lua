-- Write a function to check whether the given month number contains 31 days or not.
local function check_monthnumb_number(monthnum2)
    if monthnum2 == 2 then
        return false
    elseif monthnum2 == 4 or monthnum2 == 6 or monthnum2 == 9 or monthnum2 == 11 then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_monthnumb_number
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(6), false)
end

os.exit(lu.LuaUnit.run())