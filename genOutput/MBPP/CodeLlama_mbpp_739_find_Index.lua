-- Write a luathon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
local function find_Index(n)
    local i = 1
    local j = 1
    local k = 1
    local count = 0
    local num = 0
    local temp = 0
    local temp1 = 0
    local temp2 = 0
    local temp3 = 0
    local temp4 = 0
    local temp5 = 0
    local temp6 = 0
    local temp7 = 0
    local temp8 = 0
    local temp9 = 0
    local temp10 = 0
    local temp11 = 0
    local temp12 = 0
    local temp13 = 0
    local temp14 = 0
    local temp15 = 0
    local temp16 = 0
    local temp17 = 0
    local temp18 = 0
    local temp19 = 0
    local temp20 = 0
    local temp21 = 0
    local temp22 = 0
    local temp23 = 0
    local temp24 = 0
    local temp25 = 0
    local temp26 = 0
    local temp27 = 0
    local temp28 = 0
    local temp29 = 0
    local temp30 = 0
    local temp31 = 0
    local temp32 = 0
    local temp33 = 0
    local temp34 = 0
    local temp35 = 0
    local temp36 = 0
    local temp37 = 0
    local temp38 = 0
    local temp39 = 0
    local temp40 = 0
    local temp41 = 0
    local temp42 = 0
    local temp43 = 0
    local temp44 = 0
    local temp45 = 0
    local temp46 = 0
    local temp47

lu = require('luaunit')

function test_humaneval()
local candidate = find_Index
    lu.assertEquals(candidate(2), 4)
    lu.assertEquals(candidate(3), 14)
    lu.assertEquals(candidate(4), 45)
end

os.exit(lu.LuaUnit.run())