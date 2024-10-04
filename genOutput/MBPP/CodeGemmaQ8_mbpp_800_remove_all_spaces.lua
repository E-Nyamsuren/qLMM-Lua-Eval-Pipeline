-- Write a function to remove all whitespaces from a string.
local function remove_all_spaces(text)
    local new_text = ""
    for i = 1, #text do
        if text:sub(i, i) ~= " " then
            new_text = new_text .. text:sub(i, i)
        end
    end
    return new_text
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