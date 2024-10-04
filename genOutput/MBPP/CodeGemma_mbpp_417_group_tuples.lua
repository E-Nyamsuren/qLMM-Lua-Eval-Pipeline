-- Write a function to find common first element in given table of tables.
local function group_tuples(Input)
  local Output = {}
  for _, Tuple in ipairs(Input) do
    local Key = Tuple[1]
    Output[Key] = Output[Key] or {}
    Output[Key][#Output[Key] + 1] = Tuple
  end
  return Output
end

lu = require('luaunit')

function test_humaneval()
local candidate = group_tuples
    lu.assertEquals(candidate({{'x', 'y'}, {'x', 'z'}, {'w', 't'}}), {{'x', 'y', 'z'}, {'w', 't'}})
    lu.assertEquals(candidate({{'a', 'b'}, {'a', 'c'}, {'d', 'e'}}), {{'a', 'b', 'c'}, {'d', 'e'}})
    lu.assertEquals(candidate({{'f', 'g'}, {'f', 'g'}, {'h', 'i'}}), {{'f', 'g', 'g'}, {'h', 'i'}})
end

os.exit(lu.LuaUnit.run())