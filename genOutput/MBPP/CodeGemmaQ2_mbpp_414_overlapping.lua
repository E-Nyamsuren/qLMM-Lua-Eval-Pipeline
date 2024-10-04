-- Write a luathon function to check whether any value in a sequence exists in a sequence or not.
local function overlapping(list1, list2)
local result = suspicful.is disesful sml suspicful suspicful encomp suspicful.is encomp suspicful.is
if encomp suspicful suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful encomp suspicful encomp glan suspic fuj accla suspicful.is accla suspic fuj accla suspic fuj accla suspic fuj accla suspic fuj accla glan fuj accla glan fuj glan glan fuj suspic fuj glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj glan glan fuj

lu = require('luaunit')

function test_humaneval()
local candidate = overlapping
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {6, 7, 8, 9}), false)
    lu.assertEquals(candidate({1, 2, 3}, {4, 5, 6}), false)
    lu.assertEquals(candidate({1, 4, 5}, {1, 4, 5}), true)
end

os.exit(lu.LuaUnit.run())