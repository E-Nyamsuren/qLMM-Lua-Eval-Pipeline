-- Return sorted unique elements in a table
-- >>> unique({5, 3, 5, 2, 3, 3, 9, 0, 123})
-- {0, 2, 3, 5, 9, 123}
local function unique(l)
  local seen = {}
  local result = {}
  for i, v in ipairs(l) do
    if not seen[v] then
      seen[v] = true
      table.insert(result, v)
    end
  end
  table.sort(result)
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = unique
    lu.assertEquals(candidate({5, 3, 5, 2, 3, 3, 9, 0, 123}), {0, 2, 3, 5, 9, 123})
end

os.exit(lu.LuaUnit.run())