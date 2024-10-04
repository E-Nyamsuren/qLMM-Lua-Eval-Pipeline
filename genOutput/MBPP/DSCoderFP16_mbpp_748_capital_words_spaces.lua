-- Write a function to put spaces between words starting with capital letters in a given string.
local function capital_words_spaces(str1)
    local str2 = ""
    local prev_cap = false
    for i = 1, #str1 do
        local c = str1:sub(i,i)
        if c:match("%u") then
            if prev_cap then
                str2 = str2 .. " "
            end
            str2 = str2 .. c
            prev_cap = true
        else
            prev_cap = false
            str2 = str2 .. c
        end
    end
    return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = capital_words_spaces
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('PythonProgrammingExamples'), 'Python Programming Examples')
    lu.assertEquals(candidate('GetReadyToBeCodingFreak'), 'Get Ready To Be Coding Freak')
end

os.exit(lu.LuaUnit.run())