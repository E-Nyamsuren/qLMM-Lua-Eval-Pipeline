-- Write a function that takes in a sorted table, its length (n), and an element and returns whether the element is the majority element in the given sorted table. (The majority element is the element that occurs more than n/2 times.)
local function is_majority(arr, n, x)
    local count = 0
    for i = 1, n do
        if arr[i] == x then
            count = count + 1
            if count > n/2 then
                return true
            end
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_majority
    lu.assertEquals(candidate({1, 2, 3, 3, 3, 3, 10}, 7, 3), true)
    lu.assertEquals(candidate({1, 1, 2, 4, 4, 4, 6, 6}, 8, 4), false)
    lu.assertEquals(candidate({1, 1, 1, 2, 2}, 5, 1), true)
    lu.assertEquals(candidate({1, 1, 2, 2}, 5, 1), false)
end

os.exit(lu.LuaUnit.run())