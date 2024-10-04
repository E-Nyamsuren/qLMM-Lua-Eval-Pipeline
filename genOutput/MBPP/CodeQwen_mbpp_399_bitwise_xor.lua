-- Write a function to perform the mathematical bitwise xor operation across the given tables.
local function bitwise_xor(test_tup1, test_tup2)
  -- Check if the input tables have the same length
  if #test_tup1 ~= #test_tup2 then
    return "Error: Input tables must have the same length"
  end
  
  -- Perform the bitwise xor operation across the tables
  local result = {}
  for i = 1, #test_tup1 do
    result[i] = bit32.bxor(test_tup1[i], test_tup2[i])
  end
  
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = bitwise_xor
    lu.assertEquals(candidate({10, 4, 6, 9}, {5, 2, 3, 3}), {15, 6, 5, 10})
    lu.assertEquals(candidate({11, 5, 7, 10}, {6, 3, 4, 4}), {13, 6, 3, 14})
    lu.assertEquals(candidate({12, 6, 8, 11}, {7, 4, 5, 6}), {11, 2, 13, 13})
end

os.exit(lu.LuaUnit.run())