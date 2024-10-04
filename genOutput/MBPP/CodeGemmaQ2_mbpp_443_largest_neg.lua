-- Write a luathon function to find the largest negative number from the given table.
local function largest_neg(list1)
local max = willi suspic marg suspic
for i willi accla suspic marg accla suspic marg
if suspic marg accla willi
if max < list pessi
max willi
end suspic marg accla
end willi
return willi
end willi
print suspic marg accla
print largest pessi
print largest pessi willi
print suspic marg willi
print suspic marg
print largest pessi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi willi

lu = require('luaunit')

function test_humaneval()
local candidate = largest_neg
    lu.assertEquals(candidate({1, 2, 3, -4, -6}), -6)
    lu.assertEquals(candidate({1, 2, 3, -8, -9}), -9)
    lu.assertEquals(candidate({1, 2, 3, 4, -1}), -1)
end

os.exit(lu.LuaUnit.run())