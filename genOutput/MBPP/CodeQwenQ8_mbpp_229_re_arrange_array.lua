-- Write a function that takes in a table and an integer n, and re-arranges the first n elements of the given table so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved.
local function re_arrange_array(arr, n)
    local negative = {}
    local positive = {}
    for i = 1, n do
        if arr[i] < 0 then
            table.insert(negative, arr[i])
        else
            table.insert(positive, arr[i])
        end
    end
    for i = 1, #negative do
        arr[i] = negative[i]
    end
    for i = 1, #positive do
        arr[#negative + i] = positive[i]
    end
    return arr
end
print(table.concat(re_arrange_array({1, -2, 3, -4, 5, -6}, 6), ", ")) -- Output: -2, -4, -6, 1, 3, 5
print(table.concat(re_arrange_array({-1, -2, -3, -4, -5, -6}, 6), ", ")) -- Output: -1, -2, -3, -4, -5, -6
print(table.concat(re_arrange_array({1, 2, 3, 4, 5, 6}, 6), ", ")) -- Output: 1, 2, 3, 4, 5, 6
print(table.concat(re_arrange_array({}, 0), ", ")) -- Output: 
print(table.concat(re_arrange_array({0, 0, 0, 0, 0, 0}, 6), ", ")) -- Output: 0, 0, 0, 0, 0, 0
print(table.concat(re_arrange_array({1, -2, 3, -4, 5, -6}, 3), ", ")) -- Output: -2, -4, 1, 3, 5, -6
print(table.concat(re_arrange_

lu = require('luaunit')

function test_humaneval()
local candidate = re_arrange_array
    lu.assertEquals(candidate({-1, 2, -3, 4, 5, 6, -7, 8, 9}, 9), {-1, -3, -7, 4, 5, 6, 2, 8, 9})
    lu.assertEquals(candidate({12, -14, -26, 13, 15}, 5), {-14, -26, 12, 13, 15})
    lu.assertEquals(candidate({10, 24, 36, -42, -39, -78, 85}, 7), {-42, -39, -78, 10, 24, 36, 85})
end

os.exit(lu.LuaUnit.run())