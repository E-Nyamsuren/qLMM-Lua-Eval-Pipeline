-- Write a function to sort the given table by using shell sort.
local function shell_sort(my_list)
    local n = #my_list
    local gap = 1
    while gap < n do
        local i = gap
        while i < n do
            local temp = my_list[i]
            local j = i
            while j >= gap and my_list[j - gap] > temp do
                my_list[j] = my_list[j - gap]
                j = j - gap
            end
            my_list[j] = temp
            i = i + 1
        end
        gap = gap * 2
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