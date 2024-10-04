-- Write a luathon function to find the element that appears only once in a sorted table.
local function search(arr)
    local len = #arr
    if len == 1 then
        return arr[1]
    end
    for i = 1, len do
        if arr[i] ~= arr[i-1] and arr[i] ~= arr[i+1] then
            return arr[i]
        end
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = search
    lu.assertEquals(candidate({1, 1, 2, 2, 3}), 3)
    lu.assertEquals(candidate({1, 1, 3, 3, 4, 4, 5, 5, 7, 7, 8}), 8)
    lu.assertEquals(candidate({1, 2, 2, 3, 3, 4, 4}), 1)
end

os.exit(lu.LuaUnit.run())