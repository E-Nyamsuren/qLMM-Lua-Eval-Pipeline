-- Write a function to extract values between quotation marks from a string.
local function extract_values(text)
  local values = {}
  local value = ""
  local in_quotes = false
  for i = 1, #text do
    local char = text:sub(i, i)
    if char == '"' then
      in_quotes = not in_quotes
    elseif in_quotes then
      value = value .. char
    elseif char == "," then
      table.insert(values, value)
      value = ""
    elseif char ~= " " then
      value = value .. char
    end
  end
  table.insert(values, value)
  return values
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_values
    lu.assertEquals(candidate('"Python", "PHP", "Java"'), {'Python', 'PHP', 'Java'})
    lu.assertEquals(candidate('"python","program","language"'), {'python', 'program', 'language'})
    lu.assertEquals(candidate('"red","blue","green","yellow"'), {'red', 'blue', 'green', 'yellow'})
end

os.exit(lu.LuaUnit.run())