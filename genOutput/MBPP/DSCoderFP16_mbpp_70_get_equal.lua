-- Write a function to find whether all the given tables have equal length or not.
local function get_equal(Input)

  -- Check if the input is a table
  if type(Input) ~= "table" then
    return false
  end

lu = require('luaunit')

function test_humaneval()
local candidate = get_equal
    lu.assertEquals(candidate({{11, 22, 33}, {44, 55, 66}}), true)
    lu.assertEquals(candidate({{1, 2, 3}, {4, 5, 6, 7}}), false)
    lu.assertEquals(candidate({{1, 2}, {3, 4}}), true)
end

os.exit(lu.LuaUnit.run())