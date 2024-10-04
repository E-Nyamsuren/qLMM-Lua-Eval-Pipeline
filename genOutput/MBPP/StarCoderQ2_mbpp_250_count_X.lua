-- Write a luathon function that takes in a table and an element and counts the occcurences of the element in the table.
local function count_X(tup, x)
local count = 0
for i,v in ipairs(tup) do
if v == x then
count = count + 1
end
end
return count
end


lu = require('luaunit')

function test_humaneval()
local candidate = count_X
    lu.assertEquals(candidate({10, 8, 5, 2, 10, 15, 10, 8, 5, 8, 8, 2}, 4), 0)
    lu.assertEquals(candidate({10, 8, 5, 2, 10, 15, 10, 8, 5, 8, 8, 2}, 10), 3)
    lu.assertEquals(candidate({10, 8, 5, 2, 10, 15, 10, 8, 5, 8, 8, 2}, 8), 4)
end

os.exit(lu.LuaUnit.run())