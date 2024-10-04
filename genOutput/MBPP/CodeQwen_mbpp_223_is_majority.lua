-- Write a function that takes in a sorted table, its length (n), and an element and returns whether the element is the majority element in the given sorted table. (The majority element is the element that occurs more than n/2 times.)
local function is_majority(arr, n, x)
    local low = 0
    local high = n - 1
    local mid
    while low <= high do
        mid = low + (high - low) // 2
        if ((mid == 0 or x > arr[mid - 1]) and (arr[mid] == x)) then
            return true
        elseif x > arr[mid] then
            low = mid + 1
        else
            high = mid - 1
        end
    end
    return false
end
return is_majority

lu = require('luaunit')

function test_humaneval()
local candidate = is_majority
    lu.assertEquals(candidate({1, 2, 3, 3, 3, 3, 10}, 7, 3), true)
    lu.assertEquals(candidate({1, 1, 2, 4, 4, 4, 6, 6}, 8, 4), false)
    lu.assertEquals(candidate({1, 1, 1, 2, 2}, 5, 1), true)
    lu.assertEquals(candidate({1, 1, 2, 2}, 5, 1), false)
end

os.exit(lu.LuaUnit.run())