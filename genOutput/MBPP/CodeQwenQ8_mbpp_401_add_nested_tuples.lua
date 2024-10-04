-- Write a function to perform index wise addition of table elements in the given two nested tables.
local function add_nested_tuples(test_tup1, test_tup2)
  local result = {}
  for i, sub_tup1 in ipairs(test_tup1) do
    local sub_result = {}
    for j, val1 in ipairs(sub_tup1) do
      sub_result[j] = val1 + test_tup2[i][j]
    end
    result[i] = sub_result
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = add_nested_tuples
    lu.assertEquals(candidate({{1, 3}, {4, 5}, {2, 9}, {1, 10}}, {{6, 7}, {3, 9}, {1, 1}, {7, 3}}), {{7, 10}, {7, 14}, {3, 10}, {8, 13}})
    lu.assertEquals(candidate({{2, 4}, {5, 6}, {3, 10}, {2, 11}}, {{7, 8}, {4, 10}, {2, 2}, {8, 4}}), {{9, 12}, {9, 16}, {5, 12}, {10, 15}})
    lu.assertEquals(candidate({{3, 5}, {6, 7}, {4, 11}, {3, 12}}, {{8, 9}, {5, 11}, {3, 3}, {9, 5}}), {{11, 14}, {11, 18}, {7, 14}, {12, 17}})
end

os.exit(lu.LuaUnit.run())