-- Write a function to move all the numbers to the end of the given string.
local function move_num(test_str)
  local num_str = ""
  local alph_str = ""
  for i = 1, #test_str do
    if test_str:sub(i,i):match("%d") then
      num_str = num_str .. test_str:sub(i,i)
    else
      alph_str = alph_str .. test_str:sub(i,i)
    end
  end
  return alph_str .. num_str
end
print(move_num("abc123")) -- Output: "abc123"
print(move_num("123abc")) -- Output: "123abc"
print(move_num("a1b2c3")) -- Output: "abc123"
print(move_num("abc")) -- Output: "abc"
print(move_num("123")) -- Output: "123"
print(move_num("")) -- Output: ""
print(move_num("a1b2c3d4e5f6g7h8i9j0")) -- Output: "abcdefghijklmnopqrstuvwxyz1234567890"
print(move_num("!@#$%^&*()")) -- Output: "!@#$%^&*()"
print(move_num("a1b2c3d4e5f6g7h8i9j0!@#$%^&*()")) -- Output: "abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()"
print(move_num("!@#$%^&*()a1b2c3d4e5f6g7h8i9j0")) -- Output: "!@#$%^&*()abcdefghijklmnopqrstuvwxyz1234567890"
print(move_num("a1b2c3d4e5f6g7h8i9j0!@#$%^&*()a")) -- Output: "abcdefghijklmnopqrstuvw

lu = require('luaunit')

function test_humaneval()
local candidate = move_num
    lu.assertEquals(candidate('I1love143you55three3000thousand'), 'Iloveyouthreethousand1143553000')
    lu.assertEquals(candidate('Avengers124Assemble'), 'AvengersAssemble124')
    lu.assertEquals(candidate('Its11our12path13to14see15things16do17things'), 'Itsourpathtoseethingsdothings11121314151617')
end

os.exit(lu.LuaUnit.run())