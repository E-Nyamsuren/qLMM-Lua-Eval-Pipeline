-- Write a function that takes in a sorted table, its length (n), and an element and returns whether the element is the majority element in the given sorted table. (The majority element is the element that occurs more than n/2 times.)
local function is_majority(arr, n, x)
    -- Find the first occurrence of x in arr[]
    local i = 1
    while i <= n and arr[i] ~= x do
        i = i + 1
    end
    
    -- If x is not present in arr[]
    if i > n then
        return false
    end
    
    -- If x is present at index i, then check if x
    -- occurs n/2 times or not
    if i + n / 2 - 1 <= n and arr[i + n / 2 - 1] == x then
        return true
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