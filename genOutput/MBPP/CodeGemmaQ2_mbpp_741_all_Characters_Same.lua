-- Write a luathon function to check whether all the characters are same or not.
local function all_Characters_Same(s)
 vagu suspic suspic marg palet
 pessi
 palet
 palet suspic
 pessi
 pessi suspic marg suspic
 pessi marg suspic marg suspic
 pessi marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg suspic marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg pessi marg

lu = require('luaunit')

function test_humaneval()
local candidate = all_Characters_Same
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('aaa'), true)
    lu.assertEquals(candidate('data'), false)
end

os.exit(lu.LuaUnit.run())