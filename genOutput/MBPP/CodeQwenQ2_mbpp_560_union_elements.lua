-- Write a function to find the union of the elements of two given tables and output them in sorted order.
local function union_elements(test_tup1, test_tup2)
  local union_set = {}
  for _, v in ipairs(test_tup1) do
    union_set[v] = true
  end
  for _, v in ipairs(test_tup2) do
    union_set[v] = true
  end
  local result = {}
  for k in pairs(union_set) do
    table.insert(result, k)
  end
  table.sort(result)
  return result
end
print(table.concat(union_elements({1, 2, 3}, {4, 5, 6}), ", "))
print(table.concat(union_elements({10, 20, 30}, {30, 40, 50}), ", "))
print(table.concat(union_elements({'a', 'b', 'c'}, {'d', 'e', 'f'}), ", "))
print(table.concat(union_elements({'x', 'y', 'z'}, {'z', 'w', 'v'}), ", "))
print(table.concat(union_elements({'apple', 'banana'}, {'banana', 'cherry'}), ", "))
print(table.concat(union_elements({'red', 'blue'}, {'blue', 'green'}), ", "))
print(table.concat(union_elements({'cat', 'dog'}, {'dog', 'bird'}), ", "))
print(table.concat(union_elements({'sun', 'moon'}, {'moon', 'star'}), ", "))
print(table.concat(union_elements({'one', 'two'}, {'two', 'three'}), ", "))
print(table.concat(union_elements({'zero', 'one'}, {'one', 'two'}), ", "))
print(table.concat(union_elements({'first', 'second'}, {'second', 'third'}), ", "))
print(table.concat(union_elements({'first', 'second'}, {'third', 'fourth'}), ", "))
print(table.concat(union_elements({'

lu = require('luaunit')

function test_humaneval()
local candidate = union_elements
    lu.assertEquals(candidate({3, 4, 5, 6}, {5, 7, 4, 10}), {3, 4, 5, 6, 7, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, {3, 4, 5, 6}), {1, 2, 3, 4, 5, 6})
    lu.assertEquals(candidate({11, 12, 13, 14}, {13, 15, 16, 17}), {11, 12, 13, 14, 15, 16, 17})
end

os.exit(lu.LuaUnit.run())