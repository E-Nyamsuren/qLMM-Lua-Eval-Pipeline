-- Write a luathon function to count the number of non-empty substrings of a given string.
local function number_of_substrings(str)
    local count = 0
    local length = string.len(str)
    for i = 1, length do
        for j = i, length do
            if string.sub(str, i, j) ~= "" then
                count = count + 1
            end
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = number_of_substrings
    lu.assertEquals(candidate('abc'), 6)
    lu.assertEquals(candidate('abcd'), 10)
    lu.assertEquals(candidate('abcde'), 15)
end

os.exit(lu.LuaUnit.run())