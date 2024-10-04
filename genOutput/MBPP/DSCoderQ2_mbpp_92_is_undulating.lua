-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local digits = {}
    while n > 0 do
        local digit = n % 10
        n = math.floor(n / 10)
        table.insert(digits, digit)
    end
    local last_diff = nil
    for i = 3, #digits do
        local diff = digits[i] - digits[i-1]
        if last_diff and diff ~= last_diff then
            return false
        end
        last_diff = diff
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())