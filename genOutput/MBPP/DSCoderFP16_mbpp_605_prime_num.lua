-- Write a function to check if the given integer is a prime number.
local function prime_num(num)

  -- Check if the number is less than 2 (not prime)
  if num < 2 then
    return false
  end

lu = require('luaunit')

function test_humaneval()
local candidate = prime_num
    lu.assertEquals(candidate(13), true)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(-1010), false)
end

os.exit(lu.LuaUnit.run())