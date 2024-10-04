-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
    local digits = tostring(n):gsub("(%d)", function(c) return c end):split("")
    local i = #digits - 1
    while i > 0 do
        if digits[i] > digits[i - 1] then
            break
        end
        i = i - 1
    end
    if i == 0 then
        return 0
    end
    local j = i - 1
    while j >= 0 do
        if digits[j] > digits[i] then
            break
        end
        j = j - 1
    end
    digits[i], digits[j] = digits[j], digits[i]
    table.sort(digits, function(a, b) return a > b end)
    local result = ""
    for _, v in ipairs(digits) do
        result = result .. v
    end
    return tonumber(result)
end

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())