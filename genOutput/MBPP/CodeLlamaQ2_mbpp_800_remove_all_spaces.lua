-- Write a function to remove all whitespaces from a string.
local function remove_all_spaces(text)
    return text:gsub(" ", "")
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_all_spaces
    lu.assertEquals(candidate('python  program'), 'pythonprogram')
    lu.assertEquals(candidate('python   programming    language'), 'pythonprogramminglanguage')
    lu.assertEquals(candidate('python                     program'), 'pythonprogram')
    lu.assertEquals(candidate('   python                     program'), 'pythonprogram')
end

os.exit(lu.LuaUnit.run())