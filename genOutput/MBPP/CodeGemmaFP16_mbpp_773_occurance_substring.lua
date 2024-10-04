-- Write a function to find the occurrence and position of the substrings within a string. Return nil if there is no match.
local function occurance_substring(text, pattern)
    local result = {}
    local i = 1
    while true do
        local start, finish = string.find(text, pattern, i)
        if not start then
            break
        end
        table.insert(result, {start = start, finish = finish})
        i = finish + 1
    end
    return result
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