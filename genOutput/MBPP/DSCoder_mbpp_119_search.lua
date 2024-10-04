-- Write a luathon function to find the element that appears only once in a sorted table.
local function search(arr)
    local n = #arr
    if (n == 1) then
        return arr[1]
    end
    if (arr[1] ~= arr[2]) then
        return arr[1]
    end
    for i = 2, n - 1 do
        if (arr[i] ~= arr[i - 1] and arr[i] ~= arr[i + 1]) then
            return arr[i]
        end
    end
    if (arr[n] ~= arr[n - 1]) then
        return arr[n]
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