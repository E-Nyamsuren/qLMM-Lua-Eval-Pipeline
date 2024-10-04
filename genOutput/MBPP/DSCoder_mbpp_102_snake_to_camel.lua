-- Write a function to convert a snake case string to camel case string.
local function snake_to_camel(word)
    local ret = ""
    local cap = false
    for i = 1, #word do
        local c = word:sub(i, i)
        if c == "_" then
            cap = true
        else
            if cap then
                ret = ret .. string.upper(c)
                cap = false
            else
                ret = ret .. c
            end
        end
    end
    return ret
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('python_program'), 'PythonProgram')
    lu.assertEquals(candidate('python_language'), 'PythonLanguage')
    lu.assertEquals(candidate('programming_language'), 'ProgrammingLanguage')
end

os.exit(lu.LuaUnit.run())