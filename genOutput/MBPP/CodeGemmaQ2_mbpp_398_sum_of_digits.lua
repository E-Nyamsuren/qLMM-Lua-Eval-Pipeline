-- Write a function to compute the sum of digits of each number of a given table.
local function sum_of_digits(nums)
 attent suspic marg suspic suspic
 suspic
 attent
 attent
 attent
 attent suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg franz
 suspic marg suspic marg suspic marg suspic marg suspic marg franz franz franz suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg franz franz franz franz franz franz franz franz franz suspic marg franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz franz

lu = require('luaunit')

function test_humaneval()
local candidate = sum_of_digits
    lu.assertEquals(candidate({10, 2, 56}), 14)
    lu.assertEquals(candidate({{10, 20, 4, 5, 'b', 70, 'a'}}), 19)
    lu.assertEquals(candidate({10, 20, -4, 5, -70}), 19)
end

os.exit(lu.LuaUnit.run())