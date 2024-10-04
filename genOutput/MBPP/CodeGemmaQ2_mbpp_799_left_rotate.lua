-- Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit.
local function left_rotate(n, d)
 attent suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspicful suspic

lu = require('luaunit')

function test_humaneval()
local candidate = left_rotate
    lu.assertEquals(candidate(16, 2), 64)
    lu.assertEquals(candidate(10, 2), 40)
    lu.assertEquals(candidate(99, 3), 792)
    lu.assertEquals(candidate(99, 3), 792)
    lu.assertEquals(candidate(1, 3), 8)
    lu.assertEquals(candidate(5, 3), 40)
    lu.assertEquals(candidate(29, 3), 232)
end

os.exit(lu.LuaUnit.run())