-- Write a function to convert a snake case string to camel case string.
local function snake_to_camel(word)
    local camel_case = ""
    for i = 1, #word do
        local char = word:sub(i,i)
        if char == "_" then
            camel_case = camel_case .. ""
        else
            camel_case = camel_case .. char
        end
    end
    return camel_case
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('python_program'), 'PythonProgram')
    lu.assertEquals(candidate('python_language'), 'PythonLanguage')
    lu.assertEquals(candidate('programming_language'), 'ProgrammingLanguage')
end

os.exit(lu.LuaUnit.run())