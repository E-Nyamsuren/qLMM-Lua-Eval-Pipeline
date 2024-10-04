-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
    local vowels = {'a', 'e', 'i', 'o', 'u'}
    local str = str1:gsub(' ', '')
    local start = 1
    local end = str:len()
    while start < end do
        while start <= end and not vowels[str:sub(start, start)] do
            start = start + 1
        end
        while start <= end and not vowels[str:sub(end, end)] do
            end = end - 
        end
        if start < end then
            str = str:sub(1, start - 1) .. str:sub(end, end) .. str:sub(start + 1, end - 1) .. str:sub(start, start) .. str:sub(end + 1)
        end
        start = start + 1
        end = end - 1
    end
    return str
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())