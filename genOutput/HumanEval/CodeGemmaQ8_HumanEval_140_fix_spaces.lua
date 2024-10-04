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
        if text:sub(i, i) == " " then
            count = count + 1
        else
            if count > 2 then
                result = result .. "-"
            else
                for j = 1, count do
                    result = result .. "_"
                end
            end
            count = 0
            result = result .. text:sub(i, i)
        end
    end
    if count > 2 then
        result = result .. "-"
    else
        for j = 1, count do
            result = result .. "_"
        end
    end
    return result
end

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