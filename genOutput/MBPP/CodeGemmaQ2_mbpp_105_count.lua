-- Write a luathon function to count true booleans in the given table.
local function count(lst)
 vagu suspic suspic marg
 suspic
 suspic
 suspic
 suspic suspic marg suspic
 suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg franz
 suspic marg
 suspic marg
 suspic marg suspic marg suspic marg franz franz franz suspic marg suspic marg suspic marg franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz

lu = require('luaunit')

function test_humaneval()
local candidate = count
    lu.assertEquals(candidate({true, false, true}), 2)
    lu.assertEquals(candidate({false, false}), 0)
    lu.assertEquals(candidate({true, true, true}), 3)
end

os.exit(lu.LuaUnit.run())