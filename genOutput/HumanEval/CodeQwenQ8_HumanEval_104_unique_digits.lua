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
        for digit in tostring(num):gmatch"." do
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
print(unique_digits({15, 33, 1422, 1})) -- {1, 15, 33}
print(unique_digits({152, 323, 1422, 10})) -- {}
print(unique_digits({123, 456, 789, 101112})) -- {789}
print(unique_digits({111, 222, 333, 444})) -- {}
print(unique_digits({1234, 5678, 91011, 1213})) -- {91011}
print(unique_digits({12345, 67890, 112233, 445566})) -- {}
print(unique_digits({123456, 789101, 11223344, 55667788})) -- {789101}
print(unique_digits({1234567, 8901234, 112233445, 66778899})) -- {}
print(unique_digits({12345678, 90123456, 1122334456, 77889900})) -- {90123456}
print(unique_digits({123456789, 890123456, 11223344567, 7788990011})) -- {}
print(unique_digits({1234567890, 901

lu = require('luaunit')

function test_humaneval()
local candidate = unique_digits
    lu.assertEquals(candidate({15, 33, 1422, 1}), {1, 15, 33})
    lu.assertEquals(candidate({152, 323, 1422, 10}), {})
    lu.assertEquals(candidate({12345, 2033, 111, 151}), {111, 151})
    lu.assertEquals(candidate({135, 103, 31}), {31, 135})
end

os.exit(lu.LuaUnit.run())