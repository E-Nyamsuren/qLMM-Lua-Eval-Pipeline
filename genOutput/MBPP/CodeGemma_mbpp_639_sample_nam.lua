-- Write a function to sum the length of the names of a given table of names after removing the names that start with a lowercase letter.
local function sample_nam(sample_names)
  local sum = 0
  for i = 1, #sample_names do
    if string.sub(sample_names[i], 1, 1) == string.upper(string.sub(sample_names[i], 1, 1)) then
      sum = sum + #sample_names[i]
    end
  end
  return sum
end
print(sample_nam({"John", "Mark", "Jacob"}))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = sample_nam
    lu.assertEquals(candidate({'sally', 'Dylan', 'rebecca', 'Diana', 'Joanne', 'keith'}), 16)
    lu.assertEquals(candidate({'php', 'res', 'Python', 'abcd', 'Java', 'aaa'}), 10)
    lu.assertEquals(candidate({'abcd', 'Python', 'abba', 'aba'}), 6)
end

os.exit(lu.LuaUnit.run())