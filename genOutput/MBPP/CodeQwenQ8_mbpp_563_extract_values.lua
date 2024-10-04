-- Write a function to extract values between quotation marks from a string.
local function extract_values(text)
    local values = {}
    local i = 1
    while i <= #text do
        local start = text:find('"', i)
        if start then
            local finish = text:find('"', start + 1)
            if finish then
                table.insert(values, text:sub(start + 1, finish - 1))
                i = finish + 1
            else
                break
            end
        else
            break
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