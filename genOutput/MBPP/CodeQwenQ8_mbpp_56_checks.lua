-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)
    -- Function to reverse a number
    local function reverse(num)
        local rev = 0
        while num > 0 do
            rev = rev * 10 + num % 10
            num = num // 10
        end
        return rev
    end
    
    -- Check if the given number is one less than twice its reverse
    local rev = reverse(n)
    return n == 2 * rev + 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())