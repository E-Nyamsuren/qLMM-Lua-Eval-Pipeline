-- This function takes a table l and returns a table l' such that
-- l' is identical to l in the odd indicies, while its values at the even indicies are equal
-- to the values of the even indicies of l, but sorted.
-- >>> sort_even({1, 2, 3})
-- {1, 2, 3}
-- >>> sort_even({5, 6, 3, 4})
-- {3, 6, 5, 4}
local function sort_even(l)
  local sorted_even_indices = sort(get_even_indices(l))
  local res = {}
  for i, v in ipairs(sorted_even_indices) do
    res[i] = l[v]
  end
  return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_even
    lu.assertEquals(candidate({1, 2, 3}), {1, 2, 3})
    lu.assertEquals(candidate({5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10}), {-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123})
    lu.assertEquals(candidate({5, 8, -12, 4, 23, 2, 3, 11, 12, -10}), {-12, 8, 3, 4, 5, 2, 12, 11, 23, -10})
end

os.exit(lu.LuaUnit.run())