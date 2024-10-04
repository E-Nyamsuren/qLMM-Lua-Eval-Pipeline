-- Write a function to find words that are longer than n characters from a given table of words.
local function long_words(n, str)
  local result = {}
  for i = 1, #str do
    if #str[i] > n then
      table.insert(result, str[i])
    end
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = long_words
    lu.assertEquals(candidate(3, 'python is a programming language'), {'python', 'programming', 'language'})
    lu.assertEquals(candidate(2, 'writing a program'), {'writing', 'program'})
    lu.assertEquals(candidate(5, 'sorting list'), {'sorting'})
end

os.exit(lu.LuaUnit.run())