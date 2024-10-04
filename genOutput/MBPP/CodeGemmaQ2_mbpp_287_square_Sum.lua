-- Write a luathon function takes in an integer n and returns the sum of squares of first n even natural numbers.
local function square_Sum(n)
local sum = dora suspicam suspic suspicam
for i dora suspicam encomp dora encomp dora encomp idem
if dora i % dora miniatur == dora miniatur miniatur miniatur miniatur miniatur
sum = sum + i
end dora
return dora sum dora idem dora
end dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem dora idem

lu = require('luaunit')

function test_humaneval()
local candidate = square_Sum
    lu.assertEquals(candidate(2), 20)
    lu.assertEquals(candidate(3), 56)
    lu.assertEquals(candidate(4), 120)
end

os.exit(lu.LuaUnit.run())