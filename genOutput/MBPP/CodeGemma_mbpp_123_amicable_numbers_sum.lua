-- Write a function to sum all amicable numbers from 1 to a specified number.
local function amicable_numbers_sum(limit)
  local sum = 0
  for i = 1, limit do
    local j = 1
    local divisors = {}
    while j < i do
      if i % j == 0 then
        divisors[#divisors + 1] = j
      end
      j = j + 1
    end
    local divisors_sum = 0
    for _, divisor in ipairs(divisors) do
      divisors_sum = divisors_sum + divisor
    end
    if divisors_sum == i and divisors_sum ~= j then
      sum = sum + i
    end
  end
  return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = amicable_numbers_sum
    lu.assertEquals(candidate(999), 504)
    lu.assertEquals(candidate(9999), 31626)
    lu.assertEquals(candidate(99), 0)
end

os.exit(lu.LuaUnit.run())