-- Write a luathon function to count the number of non-empty substrings of a given string.
local function number_of_substrings(str)
    local substrings = {}
    local count = 0
    for i = 1, #str do
        for j = i, #str do
            local substring = str:sub(i, j)
            if substring ~= '' then
                substrings[substring] = true
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