-- Write a function to find whether all the given tables have equal length or not.
local function get_equal(Input)
    local length = #Input[1]
    for i = 2, #Input do
        if #Input[i] ~= length then
            return false
        end
    end
    return true
end
print(get_equal({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}})) -- true
print(get_equal({{1, 2, 3}, {4, 5, 6}, {7, 8}})) -- false
print(get_equal({{1, 2}, {3, 4}, {5, 6}})) -- true
print(get_equal({{1}, {2}, {3}})) -- true
print(get_equal({{1, 2, 3}, {4, 5}, {6, 7, 8}})) -- false
print(get_equal({{1, 2, 3}, {4, 5, 6}, {7, 8, 9, 10}})) -- false
print(get_equal({{1, 2, 3}, {4, 5, 6}, {7, 8, 9, 10, 11}})) -- false
print(get_equal({{1, 2, 3}, {4, 5, 6}, {7, 8, 9, 10, 11, 12}})) -- false
print(get_equal({{1, 2, 3}, {4, 5, 6}, {7, 8, 9, 10, 11, 12, 13}})) -- false
print(get_equal({{1, 2, 3}, {4, 5, 6}, {7, 8, 9, 10, 11, 12, 13, 14}})) -- false
print(get_equal({{1, 2, 3}, {4, 5, 6}, {7, 8, 9, 10, 11, 12, 13, 14, 15}})) -- false

lu = require('luaunit')

function test_humaneval()
local candidate = get_equal
    lu.assertEquals(candidate({{11, 22, 33}, {44, 55, 66}}), true)
    lu.assertEquals(candidate({{1, 2, 3}, {4, 5, 6, 7}}), false)
    lu.assertEquals(candidate({{1, 2}, {3, 4}}), true)
end

os.exit(lu.LuaUnit.run())