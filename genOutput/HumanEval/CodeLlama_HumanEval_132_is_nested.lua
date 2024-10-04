-- Create a function that takes a string as input which contains only square brackets.
-- The function should return true if and only if there is a valid subsequence of brackets 
-- where at least one bracket in the subsequence is nested.
-- >>> is_nested('[[]]')
-- true
-- >>> is_nested('[]]]]]]][[[[[]')
-- false
-- >>> is_nested('[][]')
-- false
-- >>> is_nested('[]')
-- false
-- >>> is_nested('[[][]]')
-- true
-- >>> is_nested('[[]][[')
-- true
local function is_nested(string)
    local stack = {}
    for i = 1, #string do
        if string:sub(i, i) == '[' then
            table.insert(stack, i)
        elseif string:sub(i, i) == ']' then
            if #stack == 0 then
                return false
            end
            local index = table.remove(stack)
            if index > i - 1 then
                return false
            end
        end
    end
    return #stack == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_nested
    lu.assertEquals(candidate('[[]]'), true)
    lu.assertEquals(candidate('[]]]]]]][[[[[]'), false)
    lu.assertEquals(candidate('[][]'), false)
    lu.assertEquals(candidate('[]'), false)
    lu.assertEquals(candidate('[[[[]]]]'), true)
    lu.assertEquals(candidate('[]]]]]]]]]]'), false)
    lu.assertEquals(candidate('[][][[]]'), true)
    lu.assertEquals(candidate('[[]'), false)
    lu.assertEquals(candidate('[]]'), false)
    lu.assertEquals(candidate('[[]][['), true)
    lu.assertEquals(candidate('[[][]]'), true)
    lu.assertEquals(candidate(''), false)
    lu.assertEquals(candidate('[[[[[[[['), false)
    lu.assertEquals(candidate(']]]]]]]]'), false)
end

os.exit(lu.LuaUnit.run())