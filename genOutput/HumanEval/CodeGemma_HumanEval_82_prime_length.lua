-- Write a function that takes a string and returns true if the string
-- length is a prime number or false otherwise
-- Examples
-- >>> prime_length('Hello')
-- true
-- >>> prime_length('abcdcba')
-- true
-- >>> prime_length('kittens')
-- true
-- >>> prime_length('orange')
-- false
local function prime_length(string)
  local length = #string
  local isPrime = true
  if length == 1 then
    isPrime = false
  else
    for i = 2, length - 1 do
      if length % i == 0 then
        isPrime = false
        break
      end
    end
  end
  return isPrime
end

lu = require('luaunit')

function test_humaneval()
local candidate = prime_length
    lu.assertEquals(candidate('Hello'), true)
    lu.assertEquals(candidate('abcdcba'), true)
    lu.assertEquals(candidate('kittens'), true)
    lu.assertEquals(candidate('orange'), false)
    lu.assertEquals(candidate('wow'), true)
    lu.assertEquals(candidate('world'), true)
    lu.assertEquals(candidate('MadaM'), true)
    lu.assertEquals(candidate('Wow'), true)
    lu.assertEquals(candidate(''), false)
    lu.assertEquals(candidate('HI'), true)
    lu.assertEquals(candidate('go'), true)
    lu.assertEquals(candidate('gogo'), false)
    lu.assertEquals(candidate('aaaaaaaaaaaaaaa'), false)
    lu.assertEquals(candidate('Madam'), true)
    lu.assertEquals(candidate('M'), false)
    lu.assertEquals(candidate('0'), false)
end

os.exit(lu.LuaUnit.run())