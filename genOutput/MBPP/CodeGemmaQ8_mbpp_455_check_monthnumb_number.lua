-- Write a function to check whether the given month number contains 31 days or not.
local function check_monthnumb_number(monthnum2)
    if monthnum2 == 1 or monthnum2 == 3 or monthnum2 == 5 or monthnum2 == 7 or monthnum2 == 8 or monthnum2 == 10 or monthnum2 == 12 then
        print("The month number " .. monthnum2 .. " contains 31 days.")
    elseif monthnum2 == 4 or monthnum2 == 6 or monthnum2 == 9 or monthnum2 == 11 then
        print("The month number " .. monthnum2 .. " contains 30 days.")
    elseif monthnum2 == 2 then
        print("The month number " .. monthnum2 .. " contains 28 or 29 days.")
    else
        print("Invalid month number.")
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