-- Write a luathon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
local function validate(n)
    -- Convert the integer to a string
    local str = tostring(n)
    
    -- Create a table to store the frequency of each digit
    local freq = {}
    
    -- Iterate over each character in the string
    for i = 1, #str do
        -- Get the digit from the character
        local digit = tonumber(str:sub(i, i))
        
        -- Increment the frequency of the digit
        freq[digit] = (freq[digit] or 0) + 1
    end
    
    -- Iterate over each digit from 0 to 9
    for digit = 0, 9 do
        -- Check if the frequency of the digit is greater than the digit itself
        if freq[digit] > digit then
            -- If it is, return false
            return false
        end
    end
    
    -- If all the frequencies are less than or equal to the digit itself, return true
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = validate
    lu.assertEquals(candidate(1234), true)
    lu.assertEquals(candidate(51241), false)
    lu.assertEquals(candidate(321), true)
end

os.exit(lu.LuaUnit.run())