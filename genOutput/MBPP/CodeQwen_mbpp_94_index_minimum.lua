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
    return min_index
end
print(index_minimum({{1, 2}, {3, 1}, {5, 4}})) -- Output: 2
print(index_minimum({{10, 20}, {30, 10}, {50, 40}})) -- Output: 2
print(index_minimum({{100, 200}, {300, 100}, {500, 400}})) -- Output: 2
print(index_minimum({{1000, 2000}, {3000, 1000}, {5000, 4000}})) -- Output: 2
print(index_minimum({{10000, 20000}, {30000, 10000}, {50000, 40000}})) -- Output: 2
print(index_minimum({{100000, 200000}, {300000, 100000}, {500000, 400000}})) -- Output: 2
print(index_minimum({{1000000, 2000000}, {3000000, 1000000}, {5000000, 4000000}})) -- Output: 2
print(index_minimum({{10000000, 20000000}, {30000000, 10000000}, {50000000, 40000000}})) -- Output: 2
print(index_minimum({{100000000, 200000000}, {300000000, 100000000}, {500000000, 400000000}})) -- Output: 2
print(index_minimum({{1000000000, 2000000000}, {3000000000, 1000000000}, {5000000000, 4000000000}})) --

lu = require('luaunit')

function test_humaneval()
local candidate = index_minimum
    lu.assertEquals(candidate({{'Rash', 143}, {'Manjeet', 200}, {'Varsha', 100}}), 'Varsha')
    lu.assertEquals(candidate({{'Yash', 185}, {'Dawood', 125}, {'Sanya', 175}}), 'Dawood')
    lu.assertEquals(candidate({{'Sai', 345}, {'Salman', 145}, {'Ayesha', 96}}), 'Ayesha')
end

os.exit(lu.LuaUnit.run())