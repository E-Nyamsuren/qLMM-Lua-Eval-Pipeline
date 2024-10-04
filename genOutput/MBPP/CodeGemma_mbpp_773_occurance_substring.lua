-- Write a function to find the occurrence and position of the substrings within a string. Return nil if there is no match.
local function occurance_substring(text, pattern)
    local occurance = {}
    local position = {}
    local i = 1
    while true do
        local start, finish = string.find(text, pattern, i)
        if start == nil then break end
        table.insert(occurance, i)
        table.insert(position, start)
        i = finish + 1
    end
    return occurance, position
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