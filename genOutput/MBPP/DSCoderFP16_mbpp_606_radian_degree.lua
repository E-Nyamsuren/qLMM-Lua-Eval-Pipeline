-- Write a function to convert degrees to radians.
local function radian_degree(degree)

    -- 1 degree = 0.0174533 radians
    return degree * 0.0174533
end

lu = require('luaunit')

function test_humaneval()
local candidate = radian_degree
    lu.assertEquals(candidate(90), 1.5707963267948966)
    lu.assertEquals(candidate(60), 1.0471975511965976)
    lu.assertEquals(candidate(120), 2.0943951023931953)
end

os.exit(lu.LuaUnit.run())