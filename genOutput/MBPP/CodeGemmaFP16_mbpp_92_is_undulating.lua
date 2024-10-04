-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local digits = {}
    while n > 0 do
        local digit = n % 10
        table.insert(digits, digit)
        n = math.floor(n / 10)
    end
    local increasing = true
    local decreasing = true
    for i = 1, #digits - 1 do
        if digits[i] > digits[i + 1] then
            increasing = false
        end
        if digits[i] < digits[i + 1] then
            decreasing = false
        end
    end
    return increasing or decreasing
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())