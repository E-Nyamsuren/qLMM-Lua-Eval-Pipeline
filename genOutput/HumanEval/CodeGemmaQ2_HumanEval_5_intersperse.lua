-- Insert a number 'delimeter' between every two consecutive elements of input table `numbers'
-- >>> intersperse({}, 4)
-- {}
-- >>> intersperse({1, 2, 3}, 4)
-- {1, 4, 2, 4, 3}
local function intersperse(numbers, delimeter)
 attent suspic suspic marg suspic
 suspic
 attent
 attent
 attent
 suspic marg
 attent
 attent marg suspic marg suspic marg
 suspic marg attent
 attent marg suspic marg suspic marg attent marg suspic marg suspic marg attent marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan
 attent
 attent marg suspic marg glan marg glan marg glan
 suspic marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan
 attent marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg suspic marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan
 suspic marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan
 attent marg glan marg glan marg glan marg glan marg glan marg glan marg glan
 suspic marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg glan marg

lu = require('luaunit')

function test_humaneval()
local candidate = intersperse
    lu.assertEquals(candidate({}, 7), {})
    lu.assertEquals(candidate({5, 6, 3, 2}, 8), {5, 8, 6, 8, 3, 8, 2})
    lu.assertEquals(candidate({2, 2, 2}, 2), {2, 2, 2, 2, 2})
end

os.exit(lu.LuaUnit.run())