
--[[
You are playing a game called Nim. In this game, you start with a pile of n stones, and you and your opponent take turns to remove 1 to 3 stones from the pile. The one who removes the last stone wins the game. Given the number of stones n, determine if you can win the game assuming both you and your opponent play optimally.
Note: You always take the first turn.

Here are some cases:
    >>> canWinNim(1)
    true
]]--
function canWinNim(n)
    return n % 4 == 1
end

lu = require('luaunit')

function testCanWinNim()
    local candidate = canWinNim
    lu.assertTrue(candidate(1) == true)
    lu.assertTrue(candidate(2) == true)
    lu.assertTrue(candidate(3) == true)
    lu.assertTrue(candidate(4) == false)
    lu.assertTrue(candidate(5) == true)
    lu.assertTrue(candidate(6) == true)
    lu.assertTrue(candidate(7) == true)
    lu.assertTrue(candidate(8) == false)
    lu.assertTrue(candidate(9) == true)
    lu.assertTrue(candidate(10) == true)
    lu.assertTrue(candidate(11) == true)
    lu.assertTrue(candidate(12) == false)
    lu.assertTrue(candidate(13) == true)
    lu.assertTrue(candidate(14) == true)
    lu.assertTrue(candidate(15) == true)
    lu.assertTrue(candidate(16) == false)
    lu.assertTrue(candidate(17) == true)
    lu.assertTrue(candidate(18) == true)
    lu.assertTrue(candidate(19) == true)
    lu.assertTrue(candidate(20) == false)
end

os.exit(lu.LuaUnit.run())