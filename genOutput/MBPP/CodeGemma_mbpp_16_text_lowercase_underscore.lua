-- Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise.
local function text_lowercase_underscore(text)
  local text_split = text:split("_")
  local text_split_length = #text_split
  local text_split_index = 1
  local text_split_index_length = #text_split[text_split_index]
  local text_split_index_length_index = 1
  local text_split_index_length_index_length = #text_split[text_split_index][text_split_index_length_index]
  local text_split_index_length_index_length_index = 1
  local text_split_index_length_index_length_index_length = #text_split[text_split_index][text_split_index_length_index][text_split_index_length_index_length_index]
  local text_split_index_length_index_length_index_length_index = 1
  local text_split_index_length_index_length_index_length_index_length = #text_split[text_split_index][text_split_index_length_index][text_split_index_length_index_length_index][text_split_index_length_index_length_index_length_index]
  local text_split_index_length_index_length_index_length_index_length_index = 1
  local text_split_index_length_index_length_index_length_index_length_index_length = #text_split[text_split_index][text_split_index_length_index][text_split_index_length_index_length_index][text_split_index_length_index_length_index_length_index][text_split_index_length_index_length_index_length_index_length_index_length_index]
  local text_split_index_length_index_length_index_length_index_length_index_length_index = 1
  local text_split_index_length_index_length_index_length_index_length_index_length_index_length

lu = require('luaunit')

function test_humaneval()
local candidate = text_lowercase_underscore
    lu.assertEquals(candidate('aab_cbbbc'), true)
    lu.assertEquals(candidate('aab_Abbbc'), false)
    lu.assertEquals(candidate('Aaab_abbbc'), false)
end

os.exit(lu.LuaUnit.run())