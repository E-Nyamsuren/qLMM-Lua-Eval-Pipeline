-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)
    -- Function to reverse the given number
    local function reverse(num)
        local reversed = 0
        while num > 0 do
            reversed = reversed * 10 + num % 10
            num = num / 10
        end
        return reversed
    end
    
    -- Calculate the reverse of the given number
    local reversed = reverse(n)
    
    -- Check if the given number is one less than twice its reverse
    return (2 * reversed - 1) == n
end

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())