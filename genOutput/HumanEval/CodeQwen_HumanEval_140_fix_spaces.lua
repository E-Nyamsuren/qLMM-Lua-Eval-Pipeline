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
    return text:gsub(' ', '_'):gsub('_+', function(s)
        return s:sub(1, 2) == '__' and '-' or '_'
    end)
end
print(fix_spaces(' Example')) -- Example
print(fix_spaces(' Example 1')) -- Example_1
print(fix_spaces(' Example 2')) -- _Example_2
print(fix_spaces(' Example 3')) -- _Example-3
print(fix_spaces(' Example 4')) -- _Example-4
print(fix_spaces(' Example 5')) -- _Example-5
print(fix_spaces(' Example 6')) -- _Example-6
print(fix_spaces(' Example 7')) -- _Example-7
print(fix_spaces(' Example 8')) -- _Example-8
print(fix_spaces(' Example 9')) -- _Example-9
print(fix_spaces(' Example 10')) -- _Example-10
print(fix_spaces(' Example 11')) -- _Example-11
print(fix_spaces(' Example 12')) -- _Example-12
print(fix_spaces(' Example 13')) -- _Example-13
print(fix_spaces(' Example 14')) -- _Example-14
print(fix_spaces(' Example 15')) -- _Example-15
print(fix_spaces(' Example 16')) -- _Example-16
print(fix_spaces(' Example 17')) -- _Example-17
print(fix_spaces(' Example 18')) -- _Example-18
print(fix_spaces(' Example 19')) -- _Example-19
print(fix_spaces(' Example 20')) -- _Example-20
print(fix_spaces(' Example 21')) -- _Example-

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