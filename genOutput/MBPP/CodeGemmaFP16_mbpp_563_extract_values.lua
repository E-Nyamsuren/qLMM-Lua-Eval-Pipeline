-- Write a function to extract values between quotation marks from a string.
local function extract_values(text)
    local values = {}
    local pattern = "%b\"\""
    local match = string.match(text, pattern)
    while match do
        table.insert(values, match)
        match = string.match(text, pattern, match + 1)
    end
    return values
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_values
    lu.assertEquals(candidate('"Python", "PHP", "Java"'), {'Python', 'PHP', 'Java'})
    lu.assertEquals(candidate('"python","program","language"'), {'python', 'program', 'language'})
    lu.assertEquals(candidate('"red","blue","green","yellow"'), {'red', 'blue', 'green', 'yellow'})
end

os.exit(lu.LuaUnit.run())