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
    for i = n + 1, #arr do
        if arr[i] < 0 then
            table.insert(negative, arr[i])
        else
            table.insert(positive, arr[i])
        end
    end
    return table.concat(negative, " ") .. " " .. table.concat(positive, " ")
end
print(re_arrange_array({1, -2, 3, -4, 5, -6}, 3)) -- Output: -2 -4 -6 1 3 5
print(re_arrange_array({-1, 2, -3, 4, -5, 6}, 4)) -- Output: -1 -3 -5 2 4 6
print(re_arrange_array({0, -1, 2, -3, 4, -5, 6}, 5)) -- Output: -1 -3 -5 0 2 4 6
print(re_arrange_array({-1, -2, -3, -4, -5, -6}, 6)) -- Output: -1 -2 -3 -4 -5 -6
print(re_arrange_array({1, 2, 3, 4, 5, 6}, 3)) -- Output: 1 2 3 4 5 6
print(re_arrange_array({}, 0)) -- Output: 
print(re_arrange_array({0}, 1)) -- Output: 0
print(re_arrange_array({0, 0}, 2)) -- Output: 0 0
print(

lu = require('luaunit')

function test_humaneval()
local candidate = re_arrange_array
    lu.assertEquals(candidate({-1, 2, -3, 4, 5, 6, -7, 8, 9}, 9), {-1, -3, -7, 4, 5, 6, 2, 8, 9})
    lu.assertEquals(candidate({12, -14, -26, 13, 15}, 5), {-14, -26, 12, 13, 15})
    lu.assertEquals(candidate({10, 24, 36, -42, -39, -78, 85}, 7), {-42, -39, -78, 10, 24, 36, 85})
end

os.exit(lu.LuaUnit.run())