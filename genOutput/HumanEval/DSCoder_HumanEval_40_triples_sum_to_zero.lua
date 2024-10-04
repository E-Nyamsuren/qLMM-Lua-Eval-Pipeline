-- triples_sum_to_zero takes a table of integers as an input.
-- it returns true if there are three distinct elements in the table that
-- sum to zero, and false otherwise.
-- >>> triples_sum_to_zero({1, 3, 5, 0})
-- false
-- >>> triples_sum_to_zero({1, 3, -2, 1})
-- true
-- >>> triples_sum_to_zero({1, 2, 3, 7})
-- false
-- >>> triples_sum_to_zero({2, 4, -5, 3, 9, 7})
-- true
-- >>> triples_sum_to_zero({1})
-- false
local function triples_sum_to_zero(l)
  local n = #l
  if n < 3 then return false end
  table.sort(l)
  for i = 1, n - 2 do
    local a = l[i]
    local start = i + 1
    local end_ = n
    while start < end_ do
      local b = l[start]
      local c = l[end_]
      if a + b + c == 0 then
        return true
      elseif a + b + c < 0 then
        start = start + 1
      else
        end_ = end_ - 1
      end
    end
  end
  return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = triples_sum_to_zero
    lu.assertEquals(candidate({1, 3, 5, 0}), false)
    lu.assertEquals(candidate({1, 3, 5, -1}), false)
    lu.assertEquals(candidate({1, 3, -2, 1}), true)
    lu.assertEquals(candidate({1, 2, 3, 7}), false)
    lu.assertEquals(candidate({1, 2, 5, 7}), false)
    lu.assertEquals(candidate({2, 4, -5, 3, 9, 7}), true)
    lu.assertEquals(candidate({1}), false)
    lu.assertEquals(candidate({1, 3, 5, -100}), false)
    lu.assertEquals(candidate({100, 3, 5, -100}), false)
end

os.exit(lu.LuaUnit.run())