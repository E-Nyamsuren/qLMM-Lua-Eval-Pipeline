-- Write a function to find minimum k records from table table. https://www.geeksforgeeks.org/luathon-find-minimum-k-records-from-table-table/ - in this case a verbatim colua of test cases
local function min_k(test_list, K)
    local min_list = {}
    local min_list_size = 0
    for i = 1, #test_list do
        if min_list_size < K then
            table.insert(min_list, test_list[i])
            min_list_size = min_list_size + 1
        else
            local min_list_min = min_list[1]
            for j = 1, min_list_size do
                if min_list[j] < min_list_min then
                    min_list_min = min_list[j]
                end
            end
            if test_list[i] < min_list_min then
                table.insert(min_list, test_list[i])
                table.remove(min_list, 1)
            end
        end
    end
    return min_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_k
    lu.assertEquals(candidate({{'Manjeet', 10}, {'Akshat', 4}, {'Akash', 2}, {'Nikhil', 8}}, 2), {{'Akash', 2}, {'Akshat', 4}})
    lu.assertEquals(candidate({{'Sanjeev', 11}, {'Angat', 5}, {'Akash', 3}, {'Nepin', 9}}, 3), {{'Akash', 3}, {'Angat', 5}, {'Nepin', 9}})
    lu.assertEquals(candidate({{'tanmay', 14}, {'Amer', 11}, {'Ayesha', 9}, {'SKD', 16}}, 1), {{'Ayesha', 9}})
end

os.exit(lu.LuaUnit.run())