-- Write a luathon function to check whether a table of numbers contains only one distinct element or not.
local function unique_Element(arr)
    local unique_count = 0
    local unique_elements = {}
    for _, num in ipairs(arr) do
        if unique_count == 0 then
            unique_elements[num] = true
            unique_count = unique_count + 1
        elseif unique_elements[num] then
            return false
        else
            unique_elements[num] = true
            unique_count = unique_count + 1
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = unique_Element
    lu.assertEquals(candidate({1, 1, 1}), true)
    lu.assertEquals(candidate({1, 2, 1, 2}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), false)
end

os.exit(lu.LuaUnit.run())