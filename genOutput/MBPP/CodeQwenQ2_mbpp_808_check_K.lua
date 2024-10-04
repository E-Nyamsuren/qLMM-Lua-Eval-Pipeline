-- Write a function to check if the given tables contain the k or not.
local function check_K(test_tup, K)
  for _, v in ipairs(test_tup) do
    if v == K then
      return true
    end
  end
  return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_K
    lu.assertEquals(candidate({10, 4, 5, 6, 8}, 6), true)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, 7), false)
    lu.assertEquals(candidate({7, 8, 9, 44, 11, 12}, 11), true)
end

os.exit(lu.LuaUnit.run())