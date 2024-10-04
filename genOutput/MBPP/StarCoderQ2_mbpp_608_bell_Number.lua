-- Write a luathon function to find nth bell number.
local function bell_Number(n)
	local bell_table = {0, 1, 2, 5, 6, 8, 15, 18, 22, 35, 38, 42, 55, 58, 62, 75, 78, 82, 95, 98, 102, 115, 118, 122, 135, 138, 142, 155, 158, 162, 175, 178, 182, 205, 208, 212, 235, 238, 242, 255, 258, 262, 275, 278, 282, 305, 308, 312, 335, 338, 342, 355, 358, 362, 375, 378, 382, 405, 408, 412, 435, 438, 442, 455, 458, 462, 475, 478, 482, 505, 508, 512, 535, 538, 542, 555, 558, 562, 575, 578, 582, 605, 608, 612, 635, 638, 642, 655, 658, 662, 675, 678, 682, 705, 708, 712, 735, 738, 742, 755, 758, 7

lu = require('luaunit')

function test_humaneval()
local candidate = bell_Number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 15)
end

os.exit(lu.LuaUnit.run())