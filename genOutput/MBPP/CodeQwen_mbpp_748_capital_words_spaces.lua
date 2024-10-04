-- Write a function to put spaces between words starting with capital letters in a given string.
local function capital_words_spaces(str1)
    local result = ""
    local capital_found = false
    for i = 1, #str1 do
        local char = str1:sub(i, i)
        if char:match("%u") then
            if capital_found then
                result = result .. " " .. char
            else
                result = result .. char
            end
            capital_found = true
        else
            result = result .. char
            capital_found = false
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = capital_words_spaces
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('PythonProgrammingExamples'), 'Python Programming Examples')
    lu.assertEquals(candidate('GetReadyToBeCodingFreak'), 'Get Ready To Be Coding Freak')
end

os.exit(lu.LuaUnit.run())