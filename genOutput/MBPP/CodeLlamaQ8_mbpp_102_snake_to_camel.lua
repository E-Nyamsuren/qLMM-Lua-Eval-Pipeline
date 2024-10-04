-- Write a function to convert a snake case string to camel case string.
local function snake_to_camel(word)
    local first, rest = string.match(word, '^([^_]+)(.*)$')
    return first:lower() .. (rest:gsub('_(.)', function(c) return c:upper() end))
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('python_program'), 'PythonProgram')
    lu.assertEquals(candidate('python_language'), 'PythonLanguage')
    lu.assertEquals(candidate('programming_language'), 'ProgrammingLanguage')
end

os.exit(lu.LuaUnit.run())