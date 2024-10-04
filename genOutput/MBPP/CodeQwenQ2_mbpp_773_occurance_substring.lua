-- Write a function to find the occurrence and position of the substrings within a string. Return nil if there is no match.
local function occurance_substring(text, pattern)
    local count = 0
    local positions = {}
    local start = 1
    while start <= #text do
        local found = text:find(pattern, start)
        if found then
            count = count + 1
            table.insert(positions, found)
            start = found + 1
        else
            break
        end
    end
    if count == 0 then
        return nil
    else
        return count, positions
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