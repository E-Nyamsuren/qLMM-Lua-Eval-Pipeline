-- Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string.
local function replace_blank(str1, char)
    return str1:gsub(' ', char)
end
print(replace_blank("Hello World", "-")) -- Output: "Hello-World"
print(replace_blank("This is a test", "*")) -- Output: "This*is*a*test"
print(replace_blank("No blanks here", "+")) -- Output: "No+blanks+here"
print(replace_blank("", "#")) -- Output: ""
print(replace_blank(" ", "!")) -- Output: "!"
print(replace_blank("   ", "=")) -- Output: "==="
print(replace_blank("    ", ":")) -- Output: ":::"
print(replace_blank("     ", ";")) -- Output: ";;;"
print(replace_blank("        ", ",")) -- Output: ",,,,"
print(replace_blank("         ", ".")) -- Output: "....."
print(replace_blank("            ", "/")) -- Output: "/////"
print(replace_blank("             ", "\\")) -- Output: "\\\\\\\\"
print(replace_blank("              ", "|")) -- Output: "|||||"
print(replace_blank("               ", "&")) -- Output: "&&&&&"
print(replace_blank("                ", "@")) -- Output: "@@@@@"
print(replace_blank("                 ", "#")) -- Output: "#"
print(replace_blank("                  ", "*")) -- Output: "*"
print(replace_blank("                   ", "+")) -- Output: "+"
print(replace_blank("                    ", "-")) -- Output: "-"
print(replace_blank("                     ", "=")) -- Output: "="
print(replace_blank("                      ", ":")) -- Output: ":"
print(replace_blank("                       ", ";")) -- Output: ";"
print(replace_blank("                        ", ",")) -- Output: ","
print(replace_blank("                         ", ".")) -- Output: "."
print(replace_blank("            

lu = require('luaunit')

function test_humaneval()
local candidate = replace_blank
    lu.assertEquals(candidate('hello people', '@'), 'hello@people')
    lu.assertEquals(candidate('python program language', '$'), 'python$program$language')
    lu.assertEquals(candidate('blank space', '-'), 'blank-space')
end

os.exit(lu.LuaUnit.run())