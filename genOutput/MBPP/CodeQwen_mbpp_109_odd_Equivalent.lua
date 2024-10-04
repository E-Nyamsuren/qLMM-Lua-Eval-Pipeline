-- Write a luathon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
local function odd_Equivalent(s, n)
    local count = 0
    for i = 1, n do
        local rotated = s:sub(2) .. s:sub(1, 1)
        local odd_count = 0
        for j = 1, #rotated do
            if rotated:sub(j, j) == '1' then
                odd_count = odd_count + 1
            end
        end
        if odd_count % 2 ~= 0 then
            count = count + 1
        end
        s = rotated
    end
    return count
end
return odd_Equivalent
```
This luathon function takes a binary string `s` and an integer `n` as input. It rotates the string `n` times and counts the number of times the number of '1's in the rotated string is odd. The function returns the count of such rotations.
The function works by iterating `n` times, rotating the string `s` one time at each iteration, and counting the number of '1's in the rotated string. If the count is odd, it increments the `count` variable. Finally, it returns the `count` variable.

lu = require('luaunit')

function test_humaneval()
local candidate = odd_Equivalent
    lu.assertEquals(candidate('011001', 6), 3)
    lu.assertEquals(candidate('11011', 5), 4)
    lu.assertEquals(candidate('1010', 4), 2)
end

os.exit(lu.LuaUnit.run())