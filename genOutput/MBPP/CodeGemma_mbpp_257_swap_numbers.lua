-- Write a function that takes in two numbers and returns a table with the second number and then the first number.
local function swap_numbers(a, b)
  local temp = a
  a = b
  b = temp
  return {b, a}
end

lu = require('luaunit')

function test_humaneval()
local candidate = swap_numbers
    lu.assertEquals(candidate(10, 20), {20, 10})
    lu.assertEquals(candidate(15, 17), {17, 15})
    lu.assertEquals(candidate(100, 200), {200, 100})
end

os.exit(lu.LuaUnit.run())