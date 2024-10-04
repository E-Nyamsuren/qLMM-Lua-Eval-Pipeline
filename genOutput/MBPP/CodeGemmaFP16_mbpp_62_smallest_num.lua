-- Write a luathon function to find smallest number in a table.
local function smallest_num(xs)
  local min = xs[1]
  for i = 2, #xs do
    if xs[i] < min then
      min = xs[i]
    end
  end
  return min
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = smallest_num
    lu.assertEquals(candidate({10, 20, 1, 45, 99}), 1)
    lu.assertEquals(candidate({1, 2, 3}), 1)
    lu.assertEquals(candidate({45, 46, 50, 60}), 45)
end

os.exit(lu.LuaUnit.run())