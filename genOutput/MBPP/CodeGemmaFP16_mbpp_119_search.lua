-- Write a luathon function to find the element that appears only once in a sorted table.
local function search(arr)
    local n = #arr
    local left = 0
    local right = n - 1
    local mid = 0
    while left <= right do
        mid = math.floor((left + right) / 2)
        if mid == 0 then
            if arr[mid] ~= arr[mid + 1] then
                return arr[mid]
            else
                left = mid + 1
            end
        elseif mid == n - 1 then
            if arr[mid] ~= arr[mid - 1] then
                return arr[mid]
            else
                right = mid - 1
            end
        else
            if arr[mid] ~= arr[mid - 1] and arr[mid] ~= arr[mid + 1] then
                return arr[mid]
            else
                if arr[mid] == arr[mid - 1] then
                    left = mid + 1
                else
                    right = mid - 1
                end
            end
        end
    end
    return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = search
    lu.assertEquals(candidate({1, 1, 2, 2, 3}), 3)
    lu.assertEquals(candidate({1, 1, 3, 3, 4, 4, 5, 5, 7, 7, 8}), 8)
    lu.assertEquals(candidate({1, 2, 2, 3, 3, 4, 4}), 1)
end

os.exit(lu.LuaUnit.run())