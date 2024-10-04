-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
  local ludic = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97}
  local ludic_index = 1
  local ludic_max = #ludic
  local result = {}
  while ludic_index <= ludic_max and ludic[ludic_index] <= n do
    table.insert(result, ludic[ludic_index])
    ludic_index = ludic_index + 1
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_ludic
    lu.assertEquals(candidate(10), {1, 2, 3, 5, 7})
    lu.assertEquals(candidate(25), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25})
    lu.assertEquals(candidate(45), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43})
end

os.exit(lu.LuaUnit.run())