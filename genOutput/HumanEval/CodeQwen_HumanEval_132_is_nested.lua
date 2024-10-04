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
    local count = 0
    for i = 1, #string do
        if string:sub(i, i) == '[' then
            count = count + 1
        elseif string:sub(i, i) == ']' then
            count = count - 1
            if count < 0 then
                return false
            end
        end
    end
    return count > 0
end
print(is_nested('[[]]')) -- true
print(is_nested('[]]]]]]][[[[[]')) -- false
print(is_nested('[][]')) -- false
print(is_nested('[]')) -- false
print(is_nested('[[][]]')) -- true
print(is_nested('[[]][[')) -- true

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