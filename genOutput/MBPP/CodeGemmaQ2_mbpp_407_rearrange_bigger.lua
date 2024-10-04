-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
 vagu suspic suspic marg suspic
 pessi
 pessi
 pessi suspic
 pessi suspic marg
 pessi marg suspic marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())