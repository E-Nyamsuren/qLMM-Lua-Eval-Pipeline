-- Write a function to replace all spaces in the given string with '%20'.
local function replace_spaces(string)
    local new_string = ""
    for i = 1, #string do
        local char = string:sub(i, i)
        if char == " " then
            new_string = new_string .. "%20"
        else
            new_string = new_string .. char
        end
    end
    return new_string
end

lu = require('luaunit')

function test_humaneval()
local candidate = replace_spaces
    lu.assertEquals(candidate('My Name is Dawood'), 'My%20Name%20is%20Dawood')
    lu.assertEquals(candidate('I am a Programmer'), 'I%20am%20a%20Programmer')
    lu.assertEquals(candidate('I love Coding'), 'I%20love%20Coding')
end

os.exit(lu.LuaUnit.run())