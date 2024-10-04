-- brackets is a string of "<" and ">".
-- return true if every opening bracket has a corresponding closing bracket.
-- >>> correct_bracketing('<')
-- false
-- >>> correct_bracketing('<>')
-- true
-- >>> correct_bracketing('<<><>>')
-- true
-- >>> correct_bracketing('><<>')
-- false
local function correct_bracketing(brackets)
 attent suspicifications suspicifications suspicifications intrigu intermitt suspicifications
 attent suspicifications intrigu
 attent suspicifications
 attent suspicifications
 attent suspicifications
 attent suspicifications intrigu
 attent vagu suspicifications
 attent vagu suspicifications intrigu
 attent vagu vagu indescri
 attent vagu vagu
 attent vagu intrigu
 attent vagu intrigu
 attent vagu vagu vagu vagu
 attent vagu vagu
 attent vagu vagu intrigu vagu vagu vagu fortn
 attent vagu vagu
 attent vagu vagu
 attent vagu vagu
 attent vagu vagu vagu vagu vagu vagu fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn fortn

lu = require('luaunit')

function test_humaneval()
local candidate = correct_bracketing
    lu.assertEquals(candidate('<>'), true)
    lu.assertEquals(candidate('<<><>>'), true)
    lu.assertEquals(candidate('<><><<><>><>'), true)
    lu.assertEquals(candidate('<><><<<><><>><>><<><><<>>>'), true)
    lu.assertEquals(candidate('<<<><>>>>'), false)
    lu.assertEquals(candidate('><<>'), false)
    lu.assertEquals(candidate('<'), false)
    lu.assertEquals(candidate('<<<<'), false)
    lu.assertEquals(candidate('>'), false)
    lu.assertEquals(candidate('<<>'), false)
    lu.assertEquals(candidate('<><><<><>><>><<>'), false)
    lu.assertEquals(candidate('<><><<><>><>>><>'), false)
end

os.exit(lu.LuaUnit.run())