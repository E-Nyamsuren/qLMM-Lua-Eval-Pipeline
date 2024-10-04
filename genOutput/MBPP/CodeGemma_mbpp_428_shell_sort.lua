-- Write a function to sort the given table by using shell sort.
local function shell_sort(my_list)
    local h = math.floor(#my_list/2)
    while h > 0 do
        for i = 1, #my_list - h do
            local j = i
            while j >= 1 and my_list[j] > my_list[j + h] do
                my_list[j], my_list[j + h] = my_list[j + h], my_list[j]
                j = j - 1
            end
        end
        h = math.floor(h/2)
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