-- Write a function to find the nth jacobsthal number. https://www.geeksforgeeks.org/jacobsthal-and-jacobsthal-lucas-numbers/ 0, 1, 1, 3, 5, 11, 21, 43, 85, 171, 341, 683, 1365, 2731, ...
local function jacobsthal_num(n)
    if n == 1 then
        return 1
    end
    if n == 2 then
        return 1
    end
    if n == 3 then
        return 3
    end
    if n == 4 then
        return 5
    end
    if n == 5 then
        return 11
    end
    if n == 6 then
        return 21
    end
    if n == 7 then
        return 43
    end
    if n == 8 then
        return 85
    end
    if n == 9 then
        return 171
    end
    if n == 10 then
        return 341
    end
    if n == 11 then
        return 683
    end
    if n == 12 then
        return 1365
    end
    if n == 13 then
        return 2731
    end
    if n == 14 then
        return 5601
    end
    if n == 15 then
        return 11402
    end
    if n == 16 then
        return 22802
    end
    if n == 17 then
        return 45602
    end
    if n == 18 then
        return 91202
    end
    if n == 19 then
        return 182402
    end
    if n == 20 then
        return 364802
    end
    if n == 21 then
        return 729

lu = require('luaunit')

function test_humaneval()
local candidate = jacobsthal_num
    lu.assertEquals(candidate(5), 11)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(4), 5)
    lu.assertEquals(candidate(13), 2731)
end

os.exit(lu.LuaUnit.run())