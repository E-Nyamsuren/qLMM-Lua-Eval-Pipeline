-- Given a string text, replace all spaces in it with underscores, 
-- and if a string has more than 2 consecutive spaces, 
-- then replace all consecutive spaces with - 
-- >>> fix_spaces(' Example')
-- 'Example'
-- >>> fix_spaces(' Example 1')
-- 'Example_1'
-- >>> fix_spaces(' Example 2')
-- '_Example_2'
-- >>> fix_spaces(' Example 3')
-- '_Example-3'
local function fix_spaces(text)
    local result = ""
    local count = 0
    for i = 1, #text do
        local c = text:sub(i, i)
        if c == " " then
            count = count + 1
        else
            if count > 2 then
                result = result .. "-"
            else
                result = result .. string.rep("_", count)
            end
            count = 0
            result = result .. c
        end
    end
    if count > 2 then
        result = result .. "-"
    else
        result = result .. string.rep("_", count)
    end
    return result
end
print(fix_spaces(' Example'))  -- Example
print(fix_spaces(' Example 1'))  -- Example_1
print(fix_spaces(' Example 2'))  -- _Example_2
print(fix_spaces(' Example 3'))  -- _Example-3
print(fix_spaces(' Example 4'))  -- _Example_4
print(fix_spaces(' Example 5'))  -- _Example-5
print(fix_spaces(' Example 6'))  -- _Example_6
print(fix_spaces(' Example 7'))  -- _Example-7
print(fix_spaces(' Example 8'))  -- _Example_8
print(fix_spaces(' Example 9'))  -- _Example-9
print(fix_spaces(' Example 10'))  -- _Example_10
print(fix_spaces(' Example 11'))  -- _Example-11
print(fix_spaces(' Example 12'))  -- _Example_12
print(fix_spaces(' Example 13'))  -- _Example-13
print(fix_spaces('

lu = require('luaunit')

function test_humaneval()
local candidate = fix_spaces
    lu.assertEquals(candidate('Example'), 'Example')
    lu.assertEquals(candidate('Mudasir Hanif '), 'Mudasir_Hanif_')
    lu.assertEquals(candidate('Yellow Yellow  Dirty  Fellow'), 'Yellow_Yellow__Dirty__Fellow')
    lu.assertEquals(candidate('Exa   mple'), 'Exa-mple')
    lu.assertEquals(candidate('   Exa 1 2 2 mple'), '-Exa_1_2_2_mple')
end

os.exit(lu.LuaUnit.run())