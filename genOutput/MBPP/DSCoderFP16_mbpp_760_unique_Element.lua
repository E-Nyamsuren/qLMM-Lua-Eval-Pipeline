-- Write a luathon function to check whether a table of numbers contains only one distinct element or not.
local function unique_Element(arr)
    local unique_arr = {}
    for _, v in ipairs(arr) do
        unique_arr[v] = true
    end
    return #unique_arr == 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = unique_Element
    lu.assertEquals(candidate({1, 1, 1}), true)
    lu.assertEquals(candidate({1, 2, 1, 2}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), false)
end

os.exit(lu.LuaUnit.run())