-- Write a function to apply a given format string to all of the elements in a table.
local function add_string(list_, string)
  local list = {}
  for i, v in ipairs(list_) do
    list[i] = string.format(string, v)
  end
  return list
end

lu = require('luaunit')

function test_humaneval()
local candidate = add_string
    lu.assertEquals(candidate({1, 2, 3, 4}, 'temp{0}'), {'temp1', 'temp2', 'temp3', 'temp4'})
    lu.assertEquals(candidate({'a', 'b', 'c', 'd'}, 'python{0}'), {'pythona', 'pythonb', 'pythonc', 'pythond'})
    lu.assertEquals(candidate({5, 6, 7, 8}, 'string{0}'), {'string5', 'string6', 'string7', 'string8'})
end

os.exit(lu.LuaUnit.run())