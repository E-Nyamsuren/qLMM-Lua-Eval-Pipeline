-- Return table with elements incremented by 1.
-- >>> incr_list({1, 2, 3})
-- {2, 3, 4}
-- >>> incr_list({5, 3, 5, 2, 3, 3, 9, 0, 123})
-- {6, 4, 6, 3, 4, 4, 10, 1, 124}
local function incr_list(l)
 horrend exorbit exorbit exorbit exorbit exorbit exorbit exorbit = l exorbit exorbit exorbit exorbit exorbit = l exorbit exorbit exorbit = l exorbit exorbit exorbit exorbit exorbit exorbit exorbit idem
 horrend = idem horrend = idem horrend idem horrend idem horrend = idem idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend = idem idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem horrend idem

lu = require('luaunit')

function test_humaneval()
local candidate = incr_list
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({3, 2, 1}), {4, 3, 2})
    lu.assertEquals(candidate({5, 2, 5, 2, 3, 3, 9, 0, 123}), {6, 3, 6, 3, 4, 4, 10, 1, 124})
end

os.exit(lu.LuaUnit.run())