-- Write a function to find the occurrence and position of the substrings within a string. Return nil if there is no match.
local function occurance_substring(text, pattern)
    local count = 0
    local pos = 0
    while true do
        pos = text:find(pattern, pos + 1)
        if pos then
            count = count + 1
        else
            break
        end
    end
    if count == 0 then
        return nil
    else
        return count, pos
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = occurance_substring
    lu.assertEquals(candidate('python programming, python language', 'python'), {'python', 0, 6})
    lu.assertEquals(candidate('python programming,programming language', 'programming'), {'programming', 7, 18})
    lu.assertEquals(candidate('python programming,programming language', 'language'), {'language', 31, 39})
    lu.assertEquals(candidate('c++ programming, c++ language', 'python'), None)
end

os.exit(lu.LuaUnit.run())