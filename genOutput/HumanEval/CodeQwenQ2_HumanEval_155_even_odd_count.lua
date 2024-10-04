-- Given an integer. return a table that has the number of even and odd digits respectively.
-- Example:
--     >>> even_odd_count(-12)
--     {1, 1}
--     >>> even_odd_count(123)
--     {1, 2}
local function even_odd_count(num)
    local even = 0
    local odd = 0
    num = math.abs(num)
    while num > 0 do
        local digit = num % 10
        if digit % 2 == 0 then
            even = even + 1
        else
            odd = odd + 1
        end
        num = num // 10
    end
    return {even, odd}
end
print(even_odd_count(-12)) -- {1, 1}
print(even_odd_count(123)) -- {1, 2}
print(even_odd_count(0)) -- {1, 0}
print(even_odd_count(1111)) -- {0, 4}
print(even_odd_count(2222)) -- {4, 0}
print(even_odd_count(1234567890)) -- {5, 5}
print(even_odd_count(-1234567890)) -- {5, 5}
print(even_odd_count(9876543210)) -- {1, 9}
print(even_odd_count(-9876543210)) -- {1, 9}
print(even_odd_count(1234567890)) -- {5, 5}
print(even_odd_count(-1234567890)) -- {5, 5}
print(even_odd_count(1234567890)) -- {5, 5}
print(even_odd_count(-1234567890)) -- {5, 5}
print(even_odd_count(1234567890)) -- {5, 5}
print(even_odd_count(-1234567890)) -- {5, 5}
print(even_odd_count(1234567890)) -- {5, 5}
print(even_odd_count(-1234567890)) -- {5,

lu = require('luaunit')

function test_humaneval()
local candidate = even_odd_count
    lu.assertEquals(candidate(7), {0, 1})
    lu.assertEquals(candidate(-78), {1, 1})
    lu.assertEquals(candidate(3452), {2, 2})
    lu.assertEquals(candidate(346211), {3, 3})
    lu.assertEquals(candidate(-345821), {3, 3})
    lu.assertEquals(candidate(-2), {1, 0})
    lu.assertEquals(candidate(-45347), {2, 3})
    lu.assertEquals(candidate(0), {1, 0})
end

os.exit(lu.LuaUnit.run())