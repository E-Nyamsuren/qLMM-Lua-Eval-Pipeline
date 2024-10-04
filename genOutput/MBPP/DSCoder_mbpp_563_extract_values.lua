-- Write a function to extract values between quotation marks from a string.
local function extract_values(text)
    local values = {}
    for line in text:gmatch("[^\n]+") do
        for value in line:gmatch('"([^"]*)"') do
            table.insert(values, value)
        end
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