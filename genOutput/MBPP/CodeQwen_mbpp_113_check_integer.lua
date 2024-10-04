-- Write a function to check if a string represents an integer or not.
local function check_integer(text)
    -- Remove leading and trailing whitespaces
    text = text:trim()
    
    -- Check if the string is empty
    if #text == 0 then
        return false
    end
    
    -- Check if the string represents an integer
    for i = 1, #text do
        local c = text:sub(i, i)
        if c ~= '0' and c ~= '1' and c ~= '2' and c ~= '3' and c ~= '4' and c ~= '5' and c ~= '6' and c ~= '7' and c ~= '8' and c ~= '9' then
            if i == 1 and (c == '-' or c == '+') then
                -- Check if the string represents a negative or positive integer
                if #text == 1 then
                    return false
                end
            else
                return false
            end
        end
    end
    
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_integer
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('1'), true)
    lu.assertEquals(candidate('12345'), true)
end

os.exit(lu.LuaUnit.run())