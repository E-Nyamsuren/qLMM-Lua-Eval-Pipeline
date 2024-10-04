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
    local count = 0
    for i in brackets:gmatch("<") do
        count = count + 1
    end
    for i in brackets:gmatch(">") do
        count = count - 1
        if count < 0 then
            return false
        end
    end
    return count == 0
end
print(correct_bracketing('<')) -- false
print(correct_bracketing('<>')) -- true
print(correct_bracketing('<<><>>')) -- true
print(correct_bracketing('><<>')) -- false

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