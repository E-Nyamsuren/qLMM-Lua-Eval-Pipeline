-- Write a luathon function to check whether any value in a sequence exists in a sequence or not.
local function overlapping(list1, list2)
    for i = 1, #list1 do
        for j = 1, #list2 do
            if list1[i] == list2[j] then
                return true
            end
        end
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = overlapping
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {6, 7, 8, 9}), false)
    lu.assertEquals(candidate({1, 2, 3}, {4, 5, 6}), false)
    lu.assertEquals(candidate({1, 4, 5}, {1, 4, 5}), true)
end

os.exit(lu.LuaUnit.run())