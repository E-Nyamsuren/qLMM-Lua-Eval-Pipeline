-- Write a luathon function to remove odd numbers from a given table.
local function remove_odd(l)
 vagu suspic suspic marg palet
 pessi
 palet
 palet suspic
 palet suspic
 pessi
 pessi suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi

lu = require('luaunit')

function test_humaneval()
local candidate = remove_odd
    lu.assertEquals(candidate({1, 2, 3}), {2})
    lu.assertEquals(candidate({2, 4, 6}), {2, 4, 6})
    lu.assertEquals(candidate({10, 20, 3}), {10, 20})
end

os.exit(lu.LuaUnit.run())