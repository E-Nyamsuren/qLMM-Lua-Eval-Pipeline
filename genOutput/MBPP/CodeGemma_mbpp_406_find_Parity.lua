-- Write a luathon function to find whether the parity of a given number is odd.
local function find_Parity(x)
    if x % 2 == 0 then
        print("even")
    else
        print("odd")
    end
end
find_Parity(10)
find_Parity(11)
find_Parity(12)
find_Parity(13)
find_Parity(14)
find_Parity(15)
find_Parity(16)
find_Parity(17)
find_Parity(18)
find_Parity(19)
find_Parity(20)
find_Parity(21)
find_Parity(22)
find_Parity(23)
find_Parity(24)
find_Parity(25)
find_Parity(26)
find_Parity(27)
find_Parity(28)
find_Parity(29)
find_Parity(30)
find_Parity(31)
find_Parity(32)
find_Parity(33)
find_Parity(34)
find_Parity(35)
find_Parity(36)
find_Parity(37)
find_Parity(38)
find_Parity(39)
find_Parity(40)
find_Parity(41)
find_Parity(42)
find_Parity(43)
find_Parity(44)
find_Parity(45)
find_Parity(46)
find_Parity(47)
find_Parity(48)
find_Parity(49)
find_Parity(50)
find_Parity(51)
find_Parity(52)
find_Parity(53)
find_Parity(54)
find_Parity(55)
find_Parity(56)
find_Parity(57)
find_Parity(58)
find_Parity(59)
find_Parity(60)
find_Parity(61)
find_Parity(62)
find_Parity(63)
find_Parity(64)
find_Parity(65)
find_Parity(

lu = require('luaunit')

function test_humaneval()
local candidate = find_Parity
    lu.assertEquals(candidate(12), false)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(10), false)
end

os.exit(lu.LuaUnit.run())