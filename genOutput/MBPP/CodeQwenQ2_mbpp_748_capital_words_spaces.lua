-- Write a function to put spaces between words starting with capital letters in a given string.
local function capital_words_spaces(str1)
    local result = ""
    for word in str1:gmatch("%S+") do
        if word:sub(1,1):match("%u") then
            result = result .. " " .. word
        else
            result = result .. word
        end
    end
    return result
end
print(capital_words_spaces("Hello World"))  -- "Hello World"
print(capital_words_spaces("hello World"))  -- "hello World"
print(capital_words_spaces("Hello world"))  -- "Hello world"
print(capital_words_spaces("hello world"))  -- "hello world"
print(capital_words_spaces("Hello World World"))  -- "Hello World World"
print(capital_words_spaces("hello World World"))  -- "hello World World"
print(capital_words_spaces("Hello world World"))  -- "Hello world World"
print(capital_words_spaces("hello world World"))  -- "hello world World"
print(capital_words_spaces("Hello World World World"))  -- "Hello World World World"
print(capital_words_spaces("hello World World World"))  -- "hello World World World"
print(capital_words_spaces("Hello world World World"))  -- "Hello world World World"
print(capital_words_spaces("hello world World World"))  -- "hello world World World"
print(capital_words_spaces("Hello World World World World"))  -- "Hello World World World World"
print(capital_words_spaces("hello World World World World"))  -- "hello World World World World"
print(capital_words_spaces("Hello world World World World"))  -- "Hello world World World World"
print(capital_words_spaces("hello world World World World"))  -- "hello world World World World"
print(capital_words_spaces("Hello World World World World World"))  -- "Hello World World World World World"
print(capital_words_spaces("hello World World World World World"))  -- "hello World World World World World"
print(capital_words

lu = require('luaunit')

function test_humaneval()
local candidate = capital_words_spaces
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('PythonProgrammingExamples'), 'Python Programming Examples')
    lu.assertEquals(candidate('GetReadyToBeCodingFreak'), 'Get Ready To Be Coding Freak')
end

os.exit(lu.LuaUnit.run())