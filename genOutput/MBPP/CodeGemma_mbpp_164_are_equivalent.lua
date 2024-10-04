-- Write a function to determine if the sum of the divisors of two integers are the same.
local function are_equivalent(num1, num2)
  local divisors1 = {}
  local divisors2 = {}
  local sum1 = 0
  local sum2 = 0
  for i = 1, num1 do
    if num1 % i == 0 then
      divisors1[i] = i
      sum1 = sum1 + i
    end
  end
  for i = 1, num2 do
    if num2 % i == 0 then
      divisors2[i] = i
      sum2 = sum2 + i
    end
  end
  if sum1 == sum2 then
    return true
  else
    return false
  end
end
print(are_equivalent(12, 24))
print(are_equivalent(12, 25))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = are_equivalent
    lu.assertEquals(candidate(36, 57), false)
    lu.assertEquals(candidate(2, 4), false)
    lu.assertEquals(candidate(23, 47), true)
end

os.exit(lu.LuaUnit.run())