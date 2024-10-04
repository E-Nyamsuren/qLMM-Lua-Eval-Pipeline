-- Write a function to find the ascii value of a character.
local function ascii_value(k)
    return string.byte(k)
end
print(ascii_value('A')) -- Output: 65
print(ascii_value('a')) -- Output: 97
print(ascii_value('0')) -- Output: 48
print(ascii_value('!')) -- Output: 33
print(ascii_value(' ')) -- Output: 32
print(ascii_value('$')) -- Output: 36
print(ascii_value('%')) -- Output: 37
print(ascii_value('^')) -- Output: 94
print(ascii_value('&')) -- Output: 38
print(ascii_value('*')) -- Output: 42
print(ascii_value('(')) -- Output: 40
print(ascii_value(')')) -- Output: 41
print(ascii_value('-')) -- Output: 45
print(ascii_value('+')) -- Output: 43
print(ascii_value('=')) -- Output: 61
print(ascii_value('[')) -- Output: 91
print(ascii_value(']')) -- Output: 93
print(ascii_value('{')) -- Output: 123
print(ascii_value('}')) -- Output: 125
print(ascii_value('|')) -- Output: 124
print(ascii_value(';')) -- Output: 59
print(ascii_value(':')) -- Output: 58
print(ascii_value(',')) -- Output: 44
print(ascii_value('.')) -- Output: 46
print(ascii_value('/')) -- Output: 47
print(ascii_value('?')) -- Output: 63
print(ascii_value('~')) -- Output: 126
print(ascii_value('`')) -- Output: 96
print(ascii_value('"')) -- Output: 34
print(ascii_value("'")) -- Output: 39
print(ascii_value('<')) -- Output: 60
print(ascii_value('>')) --

lu = require('luaunit')

function test_humaneval()
local candidate = ascii_value
    lu.assertEquals(candidate('A'), 65)
    lu.assertEquals(candidate('R'), 82)
    lu.assertEquals(candidate('S'), 83)
end

os.exit(lu.LuaUnit.run())