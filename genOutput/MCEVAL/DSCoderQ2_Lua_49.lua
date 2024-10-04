
--[[
You are playing a game called Nim. In this game, you start with a pile of n stones, and you and your opponent take turns to remove 1 to 3 stones from the pile. The one who removes the last stone wins the game. Given the number of stones n, determine if you can win the game assuming both you and your opponent play optimally.
Note: You always take the first turn.

Here are some cases:
    >>> canWinNim(1)
    true
]]--
function canWinNim(n)
    if n < 0 then return false end
    local dp = {[1] = false, [2] = true, [3] = true, [4] = true}
    for i = 5 to n do
        dp[i] = not dp[1] or not dp[2] or not dp[3] or not dp[4]
    end
    return dp[n]
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