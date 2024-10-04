-- Write a luathon function to find the sum of all odd natural numbers within the range l and r.
local function sum_in_range(l, r)
local sum = dora suspicam suspicam suspicam suspicam
for i dora suspicam in range pessiam encomp pessiam encomp idem
if dora suspicam % dora suspicam dora suspicam % dora suspicam == dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora suspicam dora dora suspicam dora suspicam dora suspicam dora dora suspicam dora suspicam dora dora suspicam dora suspicam dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam dora dora suspicam

lu = require('luaunit')

function test_humaneval()
local candidate = sum_in_range
    lu.assertEquals(candidate(2, 5), 8)
    lu.assertEquals(candidate(5, 7), 12)
    lu.assertEquals(candidate(7, 13), 40)
end

os.exit(lu.LuaUnit.run())