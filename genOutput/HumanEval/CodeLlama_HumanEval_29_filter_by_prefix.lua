-- Filter an input table of strings only for ones that start with a given prefix.
-- >>> filter_by_prefix({}, 'a')
-- {}
-- >>> filter_by_prefix({'abc', 'bcd', 'cde', 'array'}, 'a')
-- {'abc', 'array'}
local function filter_by_prefix(strings, prefix)
  local result = {}
  for _, string in ipairs(strings) do
    if string:sub(1, #prefix) == prefix then
      table.insert(result, string)
    end
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = filter_by_prefix
    lu.assertEquals(candidate({}, 'john'), {})
    lu.assertEquals(candidate({'xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'}, 'xxx'), {'xxx', 'xxxAAA', 'xxx'})
end

os.exit(lu.LuaUnit.run())