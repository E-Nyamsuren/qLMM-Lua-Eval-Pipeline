-- Given a table of positive integers x. return a sorted table of all 
-- elements that hasn't any even digit.
-- Note: Returned table should be sorted in increasing order.
-- For example:
-- >>> unique_digits({15, 33, 1422, 1})
-- {1, 15, 33}
-- >>> unique_digits({152, 323, 1422, 10})
-- {}
local function unique_digits(x)
    local result = {}
    for _, num in ipairs(x) do
        local has_even = false
        for digit in string.gmatch(tostring(num), "%d") do
            if tonumber(digit) % 2 == 0 then
                has_even = true
                break
            end
        end
        if not has_even then
            table.insert(result, num)
        end
    end
    table.sort(result)
    return result
end
print(unique_digits({15, 33, 1422, 1}))
print(unique_digits({152, 323, 1422, 10}))
print(unique_digits({123, 456, 789, 101112}))
print(unique_digits({111, 222, 333, 444}))
print(unique_digits({1234, 5678, 91011, 1213}))
print(unique_digits({1111, 2222, 3333, 4444}))
print(unique_digits({12345, 67890, 23456, 78901}))
print(unique_digits({11111, 22222, 33333, 44444}))
print(unique_digits({123456, 789012, 345678, 901234}))
print(unique_digits({111111, 222222, 333333, 444444}))
print(unique_digits({1234567, 8901234, 4567890, 123456789}))
print(unique_digits({1111111, 2222222, 3333333, 4444444}))
print(unique_digits({12345678,

lu = require('luaunit')

function test_humaneval()
local candidate = unique_digits
    lu.assertEquals(candidate({15, 33, 1422, 1}), {1, 15, 33})
    lu.assertEquals(candidate({152, 323, 1422, 10}), {})
    lu.assertEquals(candidate({12345, 2033, 111, 151}), {111, 151})
    lu.assertEquals(candidate({135, 103, 31}), {31, 135})
end

os.exit(lu.LuaUnit.run())