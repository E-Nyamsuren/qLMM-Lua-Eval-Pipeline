-- brackets is a string of "(" and ")".
-- return true if every opening bracket has a corresponding closing bracket.
-- >>> correct_bracketing('(')
-- false
-- >>> correct_bracketing('()')
-- true
-- >>> correct_bracketing('(()())')
-- true
-- >>> correct_bracketing(')(()')
-- false
local function correct_bracketing(brackets)
    local open_brackets = {'('}
    local close_brackets = {')'}
    local stack = {}

lu = require('luaunit')

function test_humaneval()
local candidate = correct_bracketing
    lu.assertEquals(candidate('()'), true)
    lu.assertEquals(candidate('(()())'), true)
    lu.assertEquals(candidate('()()(()())()'), true)
    lu.assertEquals(candidate('()()((()()())())(()()(()))'), true)
    lu.assertEquals(candidate('((()())))'), false)
    lu.assertEquals(candidate(')(()'), false)
    lu.assertEquals(candidate('('), false)
    lu.assertEquals(candidate('(((('), false)
    lu.assertEquals(candidate(')'), false)
    lu.assertEquals(candidate('(()'), false)
    lu.assertEquals(candidate('()()(()())())(()'), false)
    lu.assertEquals(candidate('()()(()())()))()'), false)
end

os.exit(lu.LuaUnit.run())