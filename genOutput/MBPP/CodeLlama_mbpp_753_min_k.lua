-- Write a function to find minimum k records from table table. https://www.geeksforgeeks.org/luathon-find-minimum-k-records-from-table-table/ - in this case a verbatim colua of test cases
local function min_k(test_list, K)
    local min_list = {}
    local min_val = 0
    local min_idx = 0
    for i = 1, #test_list do
        if min_val == 0 or test_list[i] < min_val then
            min_val = test_list[i]
            min_idx = i
        end
    end
    min_list[1] = min_idx
    for i = 2, K do
        min_val = 0
        min_idx = 0
        for j = 1, #test_list do
            if min_val == 0 or test_list[j] < min_val then
                min_val = test_list[j]
                min_idx = j
            end
        end
        min_list[i] = min_idx
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