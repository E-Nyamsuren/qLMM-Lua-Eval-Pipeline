-- Write a function to find the kth element in the given table using 1-based indexing.
local function kth_element(arr, k)
    local len = #arr
    local i = 1
    while i <= len do
        local j = i + 1
        while j <= len do
            if arr[j] < arr[i] then
                arr[i], arr[j] = arr[j], arr[i]
            end
            j = j + 1
        end
        i = i + 1
    end
    return arr[k]
end

lu = require('luaunit')

function test_humaneval()
local candidate = kth_element
    lu.assertEquals(candidate({12, 3, 5, 7, 19}, 2), 3)
    lu.assertEquals(candidate({17, 24, 8, 23}, 3), 8)
    lu.assertEquals(candidate({16, 21, 25, 36, 4}, 4), 36)
end

os.exit(lu.LuaUnit.run())