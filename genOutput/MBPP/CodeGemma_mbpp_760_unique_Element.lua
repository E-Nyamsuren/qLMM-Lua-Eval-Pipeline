-- Write a luathon function to check whether a table of numbers contains only one distinct element or not.
local function unique_Element(arr)
    local count = 0
    for i = 1, #arr do
        for j = 1, #arr do
            if arr[i] == arr[j] then
                count = count + 1
            end
        end
        if count == 1 then
            return true
        else
            return false
        end
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = unique_Element
    lu.assertEquals(candidate({1, 1, 1}), true)
    lu.assertEquals(candidate({1, 2, 1, 2}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), false)
end

os.exit(lu.LuaUnit.run())