-- Write a function to find tables which have all elements divisible by k from the given table of tables.
local function find_tuples(test_list, K)
  local res = {}
  for i = 1, #test_list do
    local flag = true
    for j = 1, #test_list[i] do
      if test_list[i][j] % K ~= 0 then
        flag = false
        break
      end
    end
    if flag then
      table.insert(res, test_list[i])
    end
  end
  return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_tuples
    lu.assertEquals(candidate({{6, 24, 12}, {7, 9, 6}, {12, 18, 21}}, 6), {{6, 24, 12}})
    lu.assertEquals(candidate({{5, 25, 30}, {4, 2, 3}, {7, 8, 9}}, 5), {{5, 25, 30}})
    lu.assertEquals(candidate({{7, 9, 16}, {8, 16, 4}, {19, 17, 18}}, 4), {{8, 16, 4}})
end

os.exit(lu.LuaUnit.run())