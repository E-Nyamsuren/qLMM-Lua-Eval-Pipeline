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
    local stack = {}
    for b in brackets:gmatch('.') do
        if b == '<' then
            table.insert(stack, b)
        else
            if #stack == 0 or stack[#stack] ~= '<' then
                return false
            else
                table.remove(stack)
            end
        end
    end
    return #stack == 0
end

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