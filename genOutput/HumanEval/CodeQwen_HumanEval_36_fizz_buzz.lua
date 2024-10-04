-- Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
-- >>> fizz_buzz(50)
-- 0
-- >>> fizz_buzz(78)
-- 2
-- >>> fizz_buzz(79)
-- 3
local function fizz_buzz(n)
    local count = 0
    for i = 1, n - 1 do
        if i % 11 == 0 or i % 13 == 0 then
            local str = tostring(i)
            for j = 1, #str do
                if str:sub(j, j) == '7' then
                    count = count + 1
                end
            end
        end
    end
    return count
end
print(fizz_buzz(50)) -- Expected output: 0
print(fizz_buzz(78)) -- Expected output: 2
print(fizz_buzz(79)) -- Expected output: 3
```
The function `fizz_buzz` takes an integer `n` as input and returns the number of times the digit 7 appears in integers less than `n` which are divisible by 11 or 13. The function iterates over all integers less than `n`, checks if they are divisible by 11 or 13, and if so, converts the integer to a string and counts the occurrences of the digit 7. The function then returns the total count. The provided test cases demonstrate the expected output for the function.

lu = require('luaunit')

function test_humaneval()
local candidate = fizz_buzz
    lu.assertEquals(candidate(50), 0)
    lu.assertEquals(candidate(78), 2)
    lu.assertEquals(candidate(79), 3)
    lu.assertEquals(candidate(100), 3)
    lu.assertEquals(candidate(200), 6)
    lu.assertEquals(candidate(4000), 192)
    lu.assertEquals(candidate(10000), 639)
    lu.assertEquals(candidate(100000), 8026)
end

os.exit(lu.LuaUnit.run())