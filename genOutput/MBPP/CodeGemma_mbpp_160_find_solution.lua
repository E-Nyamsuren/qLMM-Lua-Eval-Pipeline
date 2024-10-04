-- Write a function that returns integers x and y that satisfy ax + by = n as a table, or return nil if no solution exists.
local function find_solution(a, b, n)
  local x = 0
  local y = 0
  local i = 0
  while i < n do
    if i % a == 0 and i % b == 0 then
      x = i / a
      y = i / b
      break
    end
    i = i + 1
  end
  if i == n then
    return x, y
  else
    return nil
  end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_solution
    lu.assertEquals(candidate(2, 3, 7), {2, 1})
    lu.assertEquals(candidate(4, 2, 7), None)
    lu.assertEquals(candidate(1, 13, 17), {4, 1})
end

os.exit(lu.LuaUnit.run())