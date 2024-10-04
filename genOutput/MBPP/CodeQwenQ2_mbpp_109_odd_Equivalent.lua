-- Write a luathon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
local function odd_Equivalent(s, n)
    local count = 0
    for i = 1, n do
        local rotated = s:sub(2) .. s:sub(1, 1)
        local num = tonumber(rotated, 2)
        if num % 2 ~= 0 then
            count = count + 1
        end
        s = rotated
    end
    return count
end
return odd_Equivalent
```
This luathon function takes a binary string `s` and an integer `n` as input. It rotates the string `n` times and counts the number of numbers with an odd value. The function returns the count.
```

lu = require('luaunit')

function test_humaneval()
local candidate = odd_Equivalent
    lu.assertEquals(candidate('011001', 6), 3)
    lu.assertEquals(candidate('11011', 5), 4)
    lu.assertEquals(candidate('1010', 4), 2)
end

os.exit(lu.LuaUnit.run())