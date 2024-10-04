-- Write a function to convert a snake case string to camel case string.
local function snake_to_camel(word)
    local result = ""
    for i = 1, #word do
        local char = word:sub(i, i)
        if char == "_" then
            -- Skip underscores
        elseif char ~= char:lower() then
            -- Convert uppercase letters to lowercase and add to result
            result = result .. char:lower()
        else
            -- Add lowercase letters to result as they are
            result = result .. char
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('python_program'), 'PythonProgram')
    lu.assertEquals(candidate('python_language'), 'PythonLanguage')
    lu.assertEquals(candidate('programming_language'), 'ProgrammingLanguage')
end

os.exit(lu.LuaUnit.run())