-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)
    local digits = {}
    local i = 2
    while x > 1 do
        if x % i == 0 then
            x = x / i
            if not digits[i] then
                digits[i] = 1
            else
                digits[i] = digits[i] + 1
            end
        else
            i = i + 1
        end
    end
    local sum = 0
    for i = 2, #digits do
        sum = sum + digits[i]
    end
    return sum == 10
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_woodall
    lu.assertEquals(candidate(383), true)
    lu.assertEquals(candidate(254), false)
    lu.assertEquals(candidate(200), false)
end

os.exit(lu.LuaUnit.run())