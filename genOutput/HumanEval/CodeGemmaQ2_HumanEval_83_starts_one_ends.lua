-- Given a positive integer n, return the count of the numbers of n-digit
-- positive integers that start or end with 1.
local function starts_one_ends(n)
 vagu suspic suspiculs accla
 suspic bols
end suspic
 suspic
 bols
end
 suspic suspic
 bols bols
 pessi
 bols
 suspic
 bols
 pessi suspic suspic bols
 bols
 pessi
 bols suspic suspic
 pessi suspic bols suspic suspic
 pessi suspic suspic bols
 pessi suspic bols suspic suspic suspic bols suspic suspic suspic bols suspic suspic bols suspic suspic bols suspic bols suspic bols suspic bols suspic bols suspic bols suspic bols suspic bols suspic bols pessi bols suspic bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi bols pessi

lu = require('luaunit')

function test_humaneval()
local candidate = starts_one_ends
    lu.assertEquals(candidate(1), 1)
    lu.assertEquals(candidate(2), 18)
    lu.assertEquals(candidate(3), 180)
    lu.assertEquals(candidate(4), 1800)
    lu.assertEquals(candidate(5), 18000)
end

os.exit(lu.LuaUnit.run())