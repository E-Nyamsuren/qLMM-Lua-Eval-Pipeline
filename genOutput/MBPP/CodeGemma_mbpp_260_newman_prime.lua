-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
  local i = 0
  local p = 2
  while i < n do
    if p % 2 == 1 and p % 3 == 2 and p % 5 == 3 and p % 7 == 2 and p % 11 == 6 and p % 13 == 2 and p % 17 == 11 and p % 19 == 16 and p % 23 == 7 and p % 29 == 22 and p % 31 == 28 and p % 37 == 26 and p % 41 == 37 and p % 43 == 18 and p % 47 == 46 and p % 53 == 41 and p % 59 == 58 and p % 61 == 55 and p % 67 == 66 and p % 71 == 64 and p % 73 == 73 and p % 79 == 78 and p % 83 == 82 and p % 89 == 88 and p % 97 == 96 then
      i = i + 1
    end
    p = p + 1
  end
  return p - 1
end
print(newman_prime(100))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())