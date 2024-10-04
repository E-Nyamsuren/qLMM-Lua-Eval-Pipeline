-- Write a luathon function to find the smallest missing number from a sorted table of natural numbers.
local function find_First_Missing(array)
    local left = 0
    local right = #array - 1
    local mid
    while left <= right do
        mid = math.floor((left + right) / 2)
        if array[mid] ~= mid + 1 and (mid == 0 or array[mid - 1] == mid) then
            return mid + 1
        elseif array[mid] ~= mid + 1 then
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return #array + 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_First_Missing
    lu.assertEquals(candidate({0, 1, 2, 3}), 4)
    lu.assertEquals(candidate({0, 1, 2, 6, 9}), 3)
    lu.assertEquals(candidate({2, 3, 5, 8, 9}), 0)
end

os.exit(lu.LuaUnit.run())