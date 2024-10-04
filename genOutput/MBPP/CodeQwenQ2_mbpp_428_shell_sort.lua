-- Write a function to sort the given table by using shell sort.
local function shell_sort(my_list)
    local gap = #my_list
    local swapped = true
    while gap > 1 or swapped do
        if gap > 1 then
            gap = gap // 2
        end
        swapped = false
        for i = 1, #my_list - gap do
            if my_list[i] > my_list[i + gap] then
                my_list[i], my_list[i + gap] = my_list[i + gap], my_list[i]
                swapped = true
            end
        end
    end
    return my_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = shell_sort
    lu.assertEquals(candidate({12, 23, 4, 5, 3, 2, 12, 81, 56, 95}), {2, 3, 4, 5, 12, 12, 23, 56, 81, 95})
    lu.assertEquals(candidate({24, 22, 39, 34, 87, 73, 68}), {22, 24, 34, 39, 68, 73, 87})
    lu.assertEquals(candidate({32, 30, 16, 96, 82, 83, 74}), {16, 30, 32, 74, 82, 83, 96})
end

os.exit(lu.LuaUnit.run())