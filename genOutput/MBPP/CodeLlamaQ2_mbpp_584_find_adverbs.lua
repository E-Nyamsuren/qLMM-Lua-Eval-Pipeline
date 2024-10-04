-- Write a function to find the first adverb ending with ly and its positions in a given string.
local function find_adverbs(text)
  local adverbs = {}
  for i = 1, #text do
    local char = text:sub(i, i)
    if char == "l" and text:sub(i + 1, i + 1) == "y" then
      local j = i + 2
      while j <= #text and text:sub(j, j) ~= " " do
        j = j + 1
      end
      if j <= #text and text:sub(j, j) == " " then
        table.insert(adverbs, {i, j})
      end
    end
  end
  return adverbs
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverbs
    lu.assertEquals(candidate('Clearly, he has no excuse for such behavior.'), '0-7: Clearly')
    lu.assertEquals(candidate('Please handle the situation carefuly'), '28-36: carefuly')
    lu.assertEquals(candidate('Complete the task quickly'), '18-25: quickly')
end

os.exit(lu.LuaUnit.run())