-- For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
-- >>> flip_case('Hello')
-- 'hELLO'
local function flip_case(string)
    local result = ""
    for i = 1, string:len() do
        local char = string:sub(i, i)
        if char:match("%a") then
            if char:match("%u") then
                result = result .. char:lower()
            else
                result = result .. char:upper()
            end
        else
            result = result .. char
        end
    end
    return result
end
return flip_case

lu = require('luaunit')

function test_humaneval()
local candidate = flip_case
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('Hello!'), 'hELLO!')
    lu.assertEquals(candidate('These violent delights have violent ends'), 'tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS')
end

os.exit(lu.LuaUnit.run())