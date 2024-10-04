-- Write a luathon function to find the element that appears only once in a sorted table.
local function search(arr)
    local i = 1
    local j = #arr
    while i <= j do
        local mid = math.floor((i + j) / 2)
        if arr[mid] == arr[mid - 1] then
            i = mid + 1
        elseif arr[mid] == arr[mid + 1] then
            j = mid - 1
        else
            return arr[mid]
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