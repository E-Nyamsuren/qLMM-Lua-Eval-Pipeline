-- Write a function to merge three tables into a single sorted table.
local function merge_sorted_list(num1, num2, num3)
    local result = {}
    local i, j, k = 1, 1, 1
    while i <= #num1 and j <= #num2 and k <= #num3 do
        if num1[i] < num2[j] and num1[i] < num3[k] then
            table.insert(result, num1[i])
            i = i + 1
        elseif num2[j] < num1[i] and num2[j] < num3[k] then
            table.insert(result, num2[j])
            j = j + 1
        elseif num3[k] < num1[i] and num3[k] < num2[j] then
            table.insert(result, num3[k])
            k = k + 1
        end
    end
    while i <= #num1 do
        table.insert(result, num1[i])
        i = i + 1
    end
    while j <= #num2 do
        table.insert(result, num2[j])
        j = j + 1
    end
    while k <= #num3 do
        table.insert(result, num3[k])
        k = k + 1
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = merge_sorted_list
    lu.assertEquals(candidate({25, 24, 15, 4, 5, 29, 110}, {19, 20, 11, 56, 25, 233, 154}, {24, 26, 54, 48}), {4, 5, 11, 15, 19, 20, 24, 24, 25, 25, 26, 29, 48, 54, 56, 110, 154, 233})
    lu.assertEquals(candidate({1, 3, 5, 6, 8, 9}, {2, 5, 7, 11}, {1, 4, 7, 8, 12}), {1, 1, 2, 3, 4, 5, 5, 6, 7, 7, 8, 8, 9, 11, 12})
    lu.assertEquals(candidate({18, 14, 10, 9, 8, 7, 9, 3, 2, 4, 1}, {25, 35, 22, 85, 14, 65, 75, 25, 58}, {12, 74, 9, 50, 61, 41}), {1, 2, 3, 4, 7, 8, 9, 9, 9, 10, 12, 14, 14, 18, 22, 25, 25, 35, 41, 50, 58, 61, 65, 74, 75, 85})
end

os.exit(lu.LuaUnit.run())