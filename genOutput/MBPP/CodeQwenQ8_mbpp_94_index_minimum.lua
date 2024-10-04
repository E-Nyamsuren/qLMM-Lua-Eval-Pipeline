-- Given a table of tables, write a function that returns the first value of the table with the smallest second value.
local function index_minimum(test_list)
    local min_index = 1
    local min_value = test_list[1][2]
    for i = 2, #test_list do
        if test_list[i][2] < min_value then
            min_index = i
            min_value = test_list[i][2]
        end
    end
    return test_list[min_index][1]
end
print(index_minimum({{1, 4}, {2, 3}, {3, 5}})) -- Output: 2
print(index_minimum({{5, 10}, {4, 9}, {3, 8}})) -- Output: 4
print(index_minimum({{10, 20}, {20, 15}, {30, 25}})) -- Output: 20
print(index_minimum({{1, 2}, {2, 1}, {3, 3}})) -- Output: 2
print(index_minimum({{1, 1}, {2, 2}, {3, 3}})) -- Output: 1
print(index_minimum({{1, 3}, {2, 2}, {3, 1}})) -- Output: 3
print(index_minimum({{1, 4}, {2, 3}, {3, 5}})) -- Output: 2
print(index_minimum({{5, 10}, {4, 9}, {3, 8}})) -- Output: 4
print(index_minimum({{10, 20}, {20, 15}, {30, 25}})) -- Output: 20
print(index_minimum({{1, 2}, {2, 1}, {3, 3}})) -- Output: 2
print(index_minimum({{1, 1}, {2, 2}, {3, 3}})) -- Output: 1
print(index_minimum({{1, 3}, {2, 2}, {3, 1}})) -- Output

lu = require('luaunit')

function test_humaneval()
local candidate = index_minimum
    lu.assertEquals(candidate({{'Rash', 143}, {'Manjeet', 200}, {'Varsha', 100}}), 'Varsha')
    lu.assertEquals(candidate({{'Yash', 185}, {'Dawood', 125}, {'Sanya', 175}}), 'Dawood')
    lu.assertEquals(candidate({{'Sai', 345}, {'Salman', 145}, {'Ayesha', 96}}), 'Ayesha')
end

os.exit(lu.LuaUnit.run())