-- Write a luathon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
local function toggle_middle_bits(n)
 attent suspic marg suspic
 attent  exorbit
 suspic
 attent
 attent
 attent accla marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg glan
 suspic marg glan
 attent
 suspic marg suspic marg glan glan
 suspic marg suspic marg suspic marg glan glan glan glan glan
 suspic marg glan glan glan glan suspic marg glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan

lu = require('luaunit')

function test_humaneval()
local candidate = toggle_middle_bits
    lu.assertEquals(candidate(9), 15)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(11), 13)
    lu.assertEquals(candidate(65), 127)
    lu.assertEquals(candidate(77), 115)
end

os.exit(lu.LuaUnit.run())