-- Write a function that takes in a table and an integer n, and re-arranges the first n elements of the given table so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved.
local function re_arrange_array(arr, n)
    local i, j = 1, 1
    while i <= n do
        if arr[i] < 0 then
            arr[i], arr[j] = arr[j], arr[i]
            j = j + 1
        end
        i = i + 1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = re_arrange_array
    lu.assertEquals(candidate({-1, 2, -3, 4, 5, 6, -7, 8, 9}, 9), {-1, -3, -7, 4, 5, 6, 2, 8, 9})
    lu.assertEquals(candidate({12, -14, -26, 13, 15}, 5), {-14, -26, 12, 13, 15})
    lu.assertEquals(candidate({10, 24, 36, -42, -39, -78, 85}, 7), {-42, -39, -78, 10, 24, 36, 85})
end

os.exit(lu.LuaUnit.run())