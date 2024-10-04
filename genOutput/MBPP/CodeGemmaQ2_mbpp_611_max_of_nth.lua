-- Write a function which given a matrix represented as a table of tables returns the max of the n'th column.
local function max_of_nth(test_list, N)
local max_val = test_list[N][1] strick suspicam suspicam strick suspicam
for stric in suspicam accla
if test suspicam accla suspicam[ miniatur suspicam accla accla accla accla accla accla
if test suspicam strick suspicam
max suspicam = test suspicam
end strick strick
end
return strick
end strick

lu = require('luaunit')

function test_humaneval()
local candidate = max_of_nth
    lu.assertEquals(candidate({{5, 6, 7}, {1, 3, 5}, {8, 9, 19}}, 2), 19)
    lu.assertEquals(candidate({{6, 7, 8}, {2, 4, 6}, {9, 10, 20}}, 1), 10)
    lu.assertEquals(candidate({{7, 8, 9}, {3, 5, 7}, {10, 11, 21}}, 1), 11)
end

os.exit(lu.LuaUnit.run())