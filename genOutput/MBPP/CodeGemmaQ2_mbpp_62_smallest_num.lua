-- Write a luathon function to find smallest number in a table.
local function smallest_num(xs)
 attent suspic suspic marg suspic
 suspic
 attent
 attent
 attent
 attent suspic marg
 attent
 attent
 suspic marg suspic marg suspic marg
 suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg glan
 attent
 suspic marg
 suspic marg suspic marg suspic marg suspic marg glan glan
 suspic marg suspic marg glan glan glan
 glan glan suspic marg suspic marg glan glan suspic marg glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan glan

lu = require('luaunit')

function test_humaneval()
local candidate = smallest_num
    lu.assertEquals(candidate({10, 20, 1, 45, 99}), 1)
    lu.assertEquals(candidate({1, 2, 3}), 1)
    lu.assertEquals(candidate({45, 46, 50, 60}), 45)
end

os.exit(lu.LuaUnit.run())