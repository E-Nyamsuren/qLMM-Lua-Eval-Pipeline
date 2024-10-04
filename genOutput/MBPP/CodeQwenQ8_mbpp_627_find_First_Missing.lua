-- Write a luathon function to find the smallest missing number from a sorted table of natural numbers.
local function find_First_Missing(array)
    local left = 1
    local right = #array
    while left <= right do
        local mid = math.floor((left + right) / 2)
        if array[mid] ~= mid then
            if mid == 1 or array[mid - 1] == mid - 1 then
                return mid
            else
                right = mid - 1
            end
        else
            left = mid + 1
        end
    end
    return #array + 1
end
return find_First_Missing

lu = require('luaunit')

function test_humaneval()
local candidate = find_First_Missing
    lu.assertEquals(candidate({0, 1, 2, 3}), 4)
    lu.assertEquals(candidate({0, 1, 2, 6, 9}), 3)
    lu.assertEquals(candidate({2, 3, 5, 8, 9}), 0)
end

os.exit(lu.LuaUnit.run())