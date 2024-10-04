-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
    local digits = {}
    local result = 0
    local temp = n
    -- Extract digits
    while temp > 0 do
        table.insert(digits, temp % 10)
        temp = temp / 10
    end
    -- Sort digits in descending order
    table.sort(digits, function(a, b) return a > b end)
    -- Check if rearrangement is possible
    if digits[1] == 9 then
        return -1
    end
    -- Construct the next bigger number
    for i = 1, #digits do
        if digits[i] ~= digits[#digits] then
            result = result + digits[i] * (10 ^ (i - 1))
            break
        end
    end
    for i = #digits, 2, -1 do
        if digits[i] > digits[i - 1] then
            result = result + digits[i] * (10 ^ (i - 2))
            break
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())