-- Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string.
local function replace_blank(str1, char)
    return str1:gsub(' ', char)
end
print(replace_blank("Hello World", "*")) -- Output: Hello*World
print(replace_blank("This is a test", "-")) -- Output: This-is-a-test
print(replace_blank("No blanks here", "+")) -- Output: No+blanks+here
print(replace_blank("", "#")) -- Output: ""
print(replace_blank("One", "!")) -- Output: One
print(replace_blank("Two", "@")) -- Output: Two
print(replace_blank("Three", "#")) -- Output: Three
print(replace_blank("Four", "$")) -- Output: Four
print(replace_blank("Five", "%")) -- Output: Five
print(replace_blank("Six", "^")) -- Output: Six
print(replace_blank("Seven", "&")) -- Output: Seven
print(replace_blank("Eight", "*")) -- Output: Eight
print(replace_blank("Nine", "(")) -- Output: Nine
print(replace_blank("Ten", ")")) -- Output: Ten
print(replace_blank("Eleven", "+")) -- Output: Eleven
print(replace_blank("Twelve", "-")) -- Output: Twelve
print(replace_blank("Thirteen", "=")) -- Output: Thirteen
print(replace_blank("Fourteen", "[")) -- Output: Fourteen
print(replace_blank("Fifteen", "]")) -- Output: Fifteen
print(replace_blank("Sixteen", "{")) -- Output: Sixteen
print(replace_blank("Seventeen", "}")) -- Output: Seventeen
print(replace_blank("Eighteen", "|")) -- Output: Eighteen
print(replace_blank("Nineteen", "\\")) -- Output: Nineteen
print(replace_blank("Twenty", "/")) -- Output: Twenty
print(replace_blank("Twenty-one", "?")) -- Output: Twenty-one
print(replace_blank("

lu = require('luaunit')

function test_humaneval()
local candidate = replace_blank
    lu.assertEquals(candidate('hello people', '@'), 'hello@people')
    lu.assertEquals(candidate('python program language', '$'), 'python$program$language')
    lu.assertEquals(candidate('blank space', '-'), 'blank-space')
end

os.exit(lu.LuaUnit.run())