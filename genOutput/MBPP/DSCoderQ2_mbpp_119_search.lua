-- Write a luathon function to find the element that appears only once in a sorted table.
local function search(arr)
    local len = #arr
    local left = 1
    local right = len
    while left < right do
        local mid = math.ceil((left + right) / 2)
        if arr[mid] == arr[mid - ] then
            if mid % 2 == 0 then
                right = mid - 1
            else
                left = mid + 1
            end
        else
            if mid % 2 == 0 then
                left = mid + 1
            else
                right = mid - 1
            end
        end
    end
    return arr[left]
end

lu = require('luaunit')

function test_humaneval()
local candidate = search
    lu.assertEquals(candidate({1, 1, 2, 2, 3}), 3)
    lu.assertEquals(candidate({1, 1, 3, 3, 4, 4, 5, 5, 7, 7, 8}), 8)
    lu.assertEquals(candidate({1, 2, 2, 3, 3, 4, 4}), 1)
end

os.exit(lu.LuaUnit.run())