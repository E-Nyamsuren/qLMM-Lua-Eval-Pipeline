-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
    local str2 = ""
    local vowels = {["a"] = true, ["e"] = true, ["i"] = true, ["o"] = true, ["u"] = true}
    for i = 1, #str1 do
        if not vowels[str1:sub(i, i)] then
            str2 = str2 .. str1:sub(i, i)
        else
            str2 = str2 .. str1:sub(i, i)
            while not vowels[str1:sub(i, i)] do
                i = i + 1
            end
            str2 = str2 .. str1:sub(i, i)
        end
    end
    return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())