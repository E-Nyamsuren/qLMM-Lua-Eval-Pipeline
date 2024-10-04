-- Write a function to find minimum k records from table table. https://www.geeksforgeeks.org/luathon-find-minimum-k-records-from-table-table/ - in this case a verbatim colua of test cases
local function min_k(test_list, K)
    local result = {}
    local i = 1
    local j = 1
    while i <= K do
        local min = math.huge
        local min_index = 0
        while j <= #test_list do
            if test_list[j] < min then
                min = test_list[j]
                min_index = j
            end
            j = j + 1
        end
        table.insert(result, min)
        test_list[min_index] = math.huge
        i = i + 1
        j = 1
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_k
    lu.assertEquals(candidate({{'Manjeet', 10}, {'Akshat', 4}, {'Akash', 2}, {'Nikhil', 8}}, 2), {{'Akash', 2}, {'Akshat', 4}})
    lu.assertEquals(candidate({{'Sanjeev', 11}, {'Angat', 5}, {'Akash', 3}, {'Nepin', 9}}, 3), {{'Akash', 3}, {'Angat', 5}, {'Nepin', 9}})
    lu.assertEquals(candidate({{'tanmay', 14}, {'Amer', 11}, {'Ayesha', 9}, {'SKD', 16}}, 1), {{'Ayesha', 9}})
end

os.exit(lu.LuaUnit.run())