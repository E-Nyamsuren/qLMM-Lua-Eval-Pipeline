-- Write a function to find minimum k records from table table. https://www.geeksforgeeks.org/luathon-find-minimum-k-records-from-table-table/ - in this case a verbatim colua of test cases
local function min_k(test_list, K)
    local sorted_list = {}
    for _, v in ipairs(test_list) do
        table.insert(sorted_list, v)
    end
    table.sort(sorted_list, function(a, b) return a < b end)
    return {sorted_list[1], sorted_list[K]}
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_k
    lu.assertEquals(candidate({{'Manjeet', 10}, {'Akshat', 4}, {'Akash', 2}, {'Nikhil', 8}}, 2), {{'Akash', 2}, {'Akshat', 4}})
    lu.assertEquals(candidate({{'Sanjeev', 11}, {'Angat', 5}, {'Akash', 3}, {'Nepin', 9}}, 3), {{'Akash', 3}, {'Angat', 5}, {'Nepin', 9}})
    lu.assertEquals(candidate({{'tanmay', 14}, {'Amer', 11}, {'Ayesha', 9}, {'SKD', 16}}, 1), {{'Ayesha', 9}})
end

os.exit(lu.LuaUnit.run())