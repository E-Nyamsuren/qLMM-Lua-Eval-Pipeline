-- Write a function to find number of tables present in the given table.
local function find_lists(Input)
    local count = 0
    for i, v in ipairs(Input) do
        if type(v) == "table" then
            count = count + 1
        end
    end
    return count
end
print(find_lists({1, 2, 3, {4, 5}, {6, 7}, 8})) -- Output: 3
print(find_lists({1, 2, 3, 4, 5, 6})) -- Output: 0
print(find_lists({{1, 2}, {3, 4}, {5, 6}})) -- Output: 3
print(find_lists({1, {2, 3}, 4, {5, 6}, 7})) -- Output: 2
print(find_lists({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}})) -- Output: 3
print(find_lists({1, 2, 3, {4, 5, 6, {7, 8, 9}}})) -- Output: 2
print(find_lists({{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}})) -- Output: 3
print(find_lists({1, 2, 3, {4, 5, 6, {7, 8, 9, {10, 11, 12}}}})) -- Output: 3
print(find_lists({{1, 2, 3, 4, 5}, {6, 7, 8, 9, 10}, {11, 12, 13, 14, 15}})) -- Output: 3
print(find_lists({1, 2, 3, {4, 5, 6, {7, 8, 9, {10, 11, 12, {13, 14, 15}}}}})) -- Output: 3
print(find_lists({{1, 2, 3,

lu = require('luaunit')

function test_humaneval()
local candidate = find_lists
    lu.assertEquals(candidate({{1, 2, 3, 4}, {5, 6, 7, 8}}), 2)
    lu.assertEquals(candidate({{1, 2}, {3, 4}, {5, 6}}), 3)
    lu.assertEquals(candidate({9, 8, 7, 6, 5, 4, 3, 2, 1}), 1)
end

os.exit(lu.LuaUnit.run())