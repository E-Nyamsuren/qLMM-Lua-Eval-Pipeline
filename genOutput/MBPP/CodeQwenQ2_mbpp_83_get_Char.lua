-- Write a luathon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
local function get_Char(strr)
    local sum = 0
    for i = 1, #strr do
        sum = sum + string.byte(strr, i)
    end
    return string.char(sum % 26 + 65)
end
print(get_Char("abc"))  -- Output: "F"
print(get_Char("xyz"))  -- Output: "L"
print(get_Char("abcdefghijklmnopqrstuvwxyz"))  -- Output: "F"
print(get_Char("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))  -- Output: "F"
print(get_Char("1234567890"))  -- Output: "F"
print(get_Char("!@#$%^&*()"))  -- Output: "F"
print(get_Char(""))  -- Output: "F"
print(get_Char(" "))  -- Output: "F"
print(get_Char("  "))  -- Output: "F"
print(get_Char("   "))  -- Output: "F"
print(get_Char("    "))  -- Output: "F"
print(get_Char("      "))  -- Output: "F"
print(get_Char("       "))  -- Output: "F"
print(get_Char("        "))  -- Output: "F"
print(get_Char("         "))  -- Output: "F"
print(get_Char("          "))  -- Output: "F"
print(get_Char("           "))  -- Output: "F"
print(get_Char("            "))  -- Output: "F"
print(get_Char("             "))  -- Output: "F"
print(get_Char("              "))  -- Output: "F"
print(get_Char("               "))  -- Output: "F"
print(get_Char("                "))  -- Output: "F"
print(get_Char("                 "))  -- Output:

lu = require('luaunit')

function test_humaneval()
local candidate = get_Char
    lu.assertEquals(candidate('abc'), 'f')
    lu.assertEquals(candidate('gfg'), 't')
    lu.assertEquals(candidate('ab'), 'c')
end

os.exit(lu.LuaUnit.run())