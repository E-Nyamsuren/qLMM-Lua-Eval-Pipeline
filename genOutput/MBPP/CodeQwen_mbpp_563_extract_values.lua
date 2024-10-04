-- Write a function to extract values between quotation marks from a string.
local function extract_values(text)
    local values = {}
    local i = 1
    while i <= #text do
        if text:sub(i,i) == '"' then
            local j = i + 1
            while j <= #text and text:sub(j,j) ~= '"' do
                j = j + 1
            end
            if j <= #text then
                table.insert(values, text:sub(i+1,j-1))
                i = j + 1
            else
                break
            end
        else
            i = i + 1
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