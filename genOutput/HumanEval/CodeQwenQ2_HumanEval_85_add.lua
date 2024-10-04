-- Given a non-empty table of integers lst. add the even elements that are at odd indices..
-- Examples:
-- >>> add({4, 2, 6, 7})
-- 2
local function add(lst)
    local sum = 0
    for i = 1, #lst, 2 do
        if lst[i] % 2 == 0 then
            sum = sum + lst[i]
        end
    end
    return sum
end
print(add({4, 2, 6, 7})) -- 2
print(add({1, 3, 5, 7})) -- 0
print(add({2, 4, 6, 8})) -- 12
print(add({0, 1, 2, 3, 4, 5})) -- 6
print(add({10, 11, 12, 13, 14, 15})) -- 18
print(add({9, 8, 7, 6, 5, 4})) -- 18
print(add({1, 2, 3, 4, 5, 6, 7, 8, 9})) -- 20
print(add({1, 2, 3, 4, 5, 6, 7, 8, 9, 10})) -- 30
print(add({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11})) -- 36
print(add({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12})) -- 42
print(add({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13})) -- 54
print(add({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14})) -- 66
print(add({1, 2, 3, 4, 5,

lu = require('luaunit')

function test_humaneval()
local candidate = add
    lu.assertEquals(candidate({4, 88}), 88)
    lu.assertEquals(candidate({4, 5, 6, 7, 2, 122}), 122)
    lu.assertEquals(candidate({4, 0, 6, 7}), 0)
    lu.assertEquals(candidate({4, 4, 6, 8}), 12)
end

os.exit(lu.LuaUnit.run())