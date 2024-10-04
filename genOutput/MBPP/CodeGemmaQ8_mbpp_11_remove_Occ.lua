-- Write a luathon function to remove first and last occurrence of a given character from the string.
local function remove_Occ(s, ch)
    local i = 1
    local j = #s
    while s:sub(i, i) == ch do
        i = i + 1
    end
    while s:sub(j, j) == ch do
        j = j - 1
    end
    return s:sub(i, j)
end
print(remove_Occ("aaabbbccc", "b"))
print(remove_Occ("aaabbbccc", "a"))
print(remove_Occ("aaabbbccc", "c"))
print(remove_Occ("aaabbbccc", "d"))
print(remove_Occ("aaabbbccc", "b"))
print(remove_Occ("aaabbbccc", "a"))
print(remove_Occ("aaabbbccc", "c"))
print(remove_Occ("aaabbbccc", "d"))
print(remove_Occ("aaabbbccc", "b"))
print(remove_Occ("aaabbbccc", "a"))
print(remove_Occ("aaabbbccc", "c"))
print(remove_Occ("aaabbbccc", "d"))
print(remove_Occ("aaabbbccc", "b"))
print(remove_Occ("aaabbbccc", "a"))
print(remove_Occ("aaabbbccc", "c"))
print(remove_Occ("aaabbbccc", "d"))
print(remove_Occ("aaabbbccc", "b"))
print(remove_Occ("aaabbbccc", "a"))
print(remove_Occ("aaabbbccc", "c"))
print(remove_Occ("aaabbbccc", "d"))
print(remove_Occ("aaabbbccc", "b"))
print(remove_Occ("aaabbbccc", "a"))
print(remove_Occ("aaabbbccc", "c"))
print(remove_Occ("aaabbbccc", "d"))
print(remove_Occ("aaabbbccc", "b"))
print(remove_Occ("aaabbbccc", "a"))
print(remove_Occ("aaabbbccc", "

lu = require('luaunit')

function test_humaneval()
local candidate = remove_Occ
    lu.assertEquals(candidate('hello', 'l'), 'heo')
    lu.assertEquals(candidate('abcda', 'a'), 'bcd')
    lu.assertEquals(candidate('PHP', 'P'), 'H')
end

os.exit(lu.LuaUnit.run())