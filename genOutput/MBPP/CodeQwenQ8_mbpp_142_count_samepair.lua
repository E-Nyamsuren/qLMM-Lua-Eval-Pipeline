-- Write a function to count number items that are identical in the same position of three given tables.
local function count_samepair(list1, list2, list3)
    local count = 0
    for i = 1, #list1 do
        if list1[i] == list2[i] and list2[i] == list3[i] then
            count = count + 1
        end
    end
    return count
end
print(count_samepair({1, 2, 3}, {1, 2, 4}, {1, 2, 3})) -- Output: 2
print(count_samepair({1, 2, 3}, {2, 3, 4}, {3, 4, 5})) -- Output: 1
print(count_samepair({1, 2, 3}, {2, 3, 4}, {4, 5, 6})) -- Output: 0
print(count_samepair({1, 2, 3}, {1, 2, 3}, {1, 2, 3})) -- Output: 3
print(count_samepair({1, 2, 3}, {1, 2, 3}, {1, 2, 3})) -- Output: 3
print(count_samepair({1, 2, 3}, {1, 2, 3}, {1, 2, 3})) -- Output: 3
print(count_samepair({1, 2, 3}, {1, 2, 3}, {1, 2, 3})) -- Output: 3
print(count_samepair({1, 2, 3}, {1, 2, 3}, {1, 2, 3})) -- Output: 3
print(count_samepair({1, 2, 3}, {1, 2, 3}, {1, 2, 3})) -- Output: 3
print(count_samepair({1, 2, 3}, {1, 2, 3}, {1, 2, 3})) -- Output: 3
print(count_samepair({1, 2, 3}, {1,

lu = require('luaunit')

function test_humaneval()
local candidate = count_samepair
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8}, {2, 2, 3, 1, 2, 6, 7, 9}, {2, 1, 3, 1, 2, 6, 7, 9}), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8}, {2, 2, 3, 1, 2, 6, 7, 8}, {2, 1, 3, 1, 2, 6, 7, 8}), 4)
    lu.assertEquals(candidate({1, 2, 3, 4, 2, 6, 7, 8}, {2, 2, 3, 1, 2, 6, 7, 8}, {2, 1, 3, 1, 2, 6, 7, 8}), 5)
end

os.exit(lu.LuaUnit.run())