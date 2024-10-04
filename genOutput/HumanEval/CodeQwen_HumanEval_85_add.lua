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
print(add({0, 1, 2, 3, 4, 5})) -- 2
print(add({10, 21, 32, 43, 54, 65})) -- 32
print(add({11, 22, 33, 44, 55, 66})) -- 44
print(add({12, 23, 34, 45, 56, 67})) -- 66
print(add({13, 24, 35, 46, 57, 68})) -- 88
print(add({14, 25, 36, 47, 58, 69})) -- 124
print(add({15, 26, 37, 48, 59, 70})) -- 170
print(add({16, 27, 38, 49, 60, 71})) -- 216
print(add({17, 28, 39, 50, 61, 72})) -- 272
print(add({18, 29, 40, 51, 62, 73})) -- 340
print(add({19, 30, 41, 52, 63, 74})) -- 408
print(add({20, 31, 42, 53, 64, 75})) -- 476
print(add({21, 32, 43, 54, 65, 76})) -- 568
print(add({22, 33, 44, 55, 66

lu = require('luaunit')

function test_humaneval()
local candidate = add
    lu.assertEquals(candidate({4, 88}), 88)
    lu.assertEquals(candidate({4, 5, 6, 7, 2, 122}), 122)
    lu.assertEquals(candidate({4, 0, 6, 7}), 0)
    lu.assertEquals(candidate({4, 4, 6, 8}), 12)
end

os.exit(lu.LuaUnit.run())