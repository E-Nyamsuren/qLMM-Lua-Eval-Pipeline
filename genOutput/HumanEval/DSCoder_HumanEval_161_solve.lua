-- You are given a string s.
-- if s[i] is a letter, reverse its case from lower to upper or vise versa, 
-- otherwise keep it as it is.
-- If the string contains no letters, reverse the string.
-- The function should return the resulted string.
-- Examples
-- >>> solve('1234')
-- '4321'
-- >>> solve('ab')
-- 'AB'
-- >>> solve('#a@C')
-- '#A@c'
local function solve(s)
    local res = ''
    for i = 1, #s do
        local c = s:sub(i, i)
        if c:match('%a') then
            res = res .. (c:match('%u') and c:lower() or c:upper())
        else
            res = c .. res
        end
    end
    return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = solve
    lu.assertEquals(candidate('AsDf'), 'aSdF')
    lu.assertEquals(candidate('1234'), '4321')
    lu.assertEquals(candidate('ab'), 'AB')
    lu.assertEquals(candidate('#a@C'), '#A@c')
    lu.assertEquals(candidate('#AsdfW^45'), '#aSDFw^45')
    lu.assertEquals(candidate('#6@2'), '2@6#')
    lu.assertEquals(candidate('#$a^D'), '#$A^d')
    lu.assertEquals(candidate('#ccc'), '#CCC')
end

os.exit(lu.LuaUnit.run())