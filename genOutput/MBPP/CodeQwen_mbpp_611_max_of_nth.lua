-- Write a function which given a matrix represented as a table of tables returns the max of the n'th column.
local function max_of_nth(test_list, N)
  local max_val = test_list[1][N]
  for i = 2, #test_list do
    if test_list[i][N] > max_val then
      max_val = test_list[i][N]
    end
  end
  return max_val
end
print(max_of_nth({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}, 2)) -- Output: 6
print(max_of_nth({{10, 20, 30}, {40, 50, 60}, {70, 80, 90}}, 1)) -- Output: 70
print(max_of_nth({{100, 200, 300}, {400, 500, 600}, {700, 800, 900}}, 3)) -- Output: 900
print(max_of_nth({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}, 4)) -- Output: 3
print(max_of_nth({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}, 5)) -- Output: 3
print(max_of_nth({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}, 6)) -- Output: 3
print(max_of_nth({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}, 7)) -- Output: 3
print(max_of_nth({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}, 8)) -- Output: 3
print(max_of_nth({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}, 9

lu = require('luaunit')

function test_humaneval()
local candidate = max_of_nth
    lu.assertEquals(candidate({{5, 6, 7}, {1, 3, 5}, {8, 9, 19}}, 2), 19)
    lu.assertEquals(candidate({{6, 7, 8}, {2, 4, 6}, {9, 10, 20}}, 1), 10)
    lu.assertEquals(candidate({{7, 8, 9}, {3, 5, 7}, {10, 11, 21}}, 1), 11)
end

os.exit(lu.LuaUnit.run())