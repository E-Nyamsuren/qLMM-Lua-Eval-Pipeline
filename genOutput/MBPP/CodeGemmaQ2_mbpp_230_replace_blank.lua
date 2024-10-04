-- Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string.
local function replace_blank(str1, char)
local str = str1 willi suspicam scrat suspicam

lu = require('luaunit')

function test_humaneval()
local candidate = replace_blank
    lu.assertEquals(candidate('hello people', '@'), 'hello@people')
    lu.assertEquals(candidate('python program language', '$'), 'python$program$language')
    lu.assertEquals(candidate('blank space', '-'), 'blank-space')
end

os.exit(lu.LuaUnit.run())