-- Given a positive integer, obtain its roman numeral equivalent as a string,
-- and return it in lowercase.
-- Restrictions: 1 <= num <= 1000
-- Examples:
-- >>> int_to_mini_roman(19)
-- 'xix'
-- >>> int_to_mini_roman(152)
-- 'clii'
-- >>> int_to_mini_roman(426)
-- 'cdxxvi'
local function int_to_mini_roman(number)
  local roman_numerals = {
    ["i"] = 1,
    ["v"] = 5,
    ["x"] = 10,
    ["l"] = 50,
    ["c"] = 100,
    ["d"] = 500,
    ["m"] = 1000
  }
  local roman_numerals_reverse = {
    [1] = "i",
    [5] = "v",
    [10] = "x",
    [50] = "l",
    [100] = "c",
    [500] = "d",
    [1000] = "m"
  }
  local result = ""
  for value, numeral in pairs(roman_numerals_reverse) do
    while number >= value do
      result = result .. numeral
      number = number - value
    end
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = int_to_mini_roman
    lu.assertEquals(candidate(19), 'xix')
    lu.assertEquals(candidate(152), 'clii')
    lu.assertEquals(candidate(251), 'ccli')
    lu.assertEquals(candidate(426), 'cdxxvi')
    lu.assertEquals(candidate(500), 'd')
    lu.assertEquals(candidate(1), 'i')
    lu.assertEquals(candidate(4), 'iv')
    lu.assertEquals(candidate(43), 'xliii')
    lu.assertEquals(candidate(90), 'xc')
    lu.assertEquals(candidate(94), 'xciv')
    lu.assertEquals(candidate(532), 'dxxxii')
    lu.assertEquals(candidate(900), 'cm')
    lu.assertEquals(candidate(994), 'cmxciv')
    lu.assertEquals(candidate(1000), 'm')
end

os.exit(lu.LuaUnit.run())