-- Write a function to extract the number of unique tables in the given table.
local function extract_freq(test_list)
  local freq_dict = {}
  for _, table_name in ipairs(test_list) do
    freq_dict[table_name] = (freq_dict[table_name] or 0) + 1
  end
  return #freq_dict
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_freq
    lu.assertEquals(candidate({{3, 4}, {1, 2}, {4, 3}, {5, 6}}), 3)
    lu.assertEquals(candidate({{4, 15}, {2, 3}, {5, 4}, {6, 7}}), 4)
    lu.assertEquals(candidate({{5, 16}, {2, 3}, {6, 5}, {6, 9}}), 4)
end

os.exit(lu.LuaUnit.run())