-- Write a function to find the occurrence and position of the substrings within a string. Return nil if there is no match.
local function occurance_substring(text, pattern)
    local occurrences = {}
    local pos = 1
    while true do
        local found, start, end_ = string.find(text, pattern, pos)
        if not found then break end
        table.insert(occurrences, {start = start, end = end_, length = end_ - start})
        pos = end_ + 1
    end
    if #occurrences == 0 then return nil end
    return occurrences
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