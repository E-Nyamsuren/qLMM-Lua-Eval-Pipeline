-- Write a function that takes in two tables and subtracts the elements of the first table by the elements of the second table with the same index.
local function substract_elements(test_tup1, test_tup2)
  local result = {}
  for i = 1, #test_tup1 do
    result[i] = test_tup1[i] - test_tup2[i]
  end
  return result
end
print(substract_elements({1, 2, 3}, {1, 2, 3})) -- {0, 0, 0}
print(substract_elements({10, 20, 30}, {1, 2, 3})) -- {9, 18, 27}
print(substract_elements({5, 15, 25}, {2, 4, 6})) -- {3, 11, 19}
print(substract_elements({100, 200, 300}, {10, 20, 30})) -- {90, 180, 270}
print(substract_elements({1.5, 2.5, 3.5}, {1.5, 2.5, 3.5})) -- {0.0, 0.0, 0.0}
print(substract_elements({0.1, 0.2, 0.3}, {0.1, 0.2, 0.3})) -- {0.0, 0.0, 0.0}
print(substract_elements({0.01, 0.02, 0.03}, {0.01, 0.02, 0.03})) -- {0.0, 0.0, 0.0}
print(substract_elements({0.001, 0.002, 0.003}, {0.001, 0.002, 0.003})) -- {0.0, 0.0, 0.0}
print(substract_elements({0.0001, 0.0002, 0.0003}, {0.0001, 0.0002, 0.0003})) -- {0.0, 

lu = require('luaunit')

function test_humaneval()
local candidate = substract_elements
    lu.assertEquals(candidate({10, 4, 5}, {2, 5, 18}), {8, -1, -13})
    lu.assertEquals(candidate({11, 2, 3}, {24, 45, 16}), {-13, -43, -13})
    lu.assertEquals(candidate({7, 18, 9}, {10, 11, 12}), {-3, 7, -3})
end

os.exit(lu.LuaUnit.run())