-- You will be given a string of words separated by commas or spaces. Your task is
-- to split the string into words and return a table of the words.
-- For example:
-- >>> words_string('Hi, my name is John')
-- {'Hi', 'my', 'name', 'is', 'John'}
-- >>> words_string('One, two, three, four, five, six')
-- {'One', 'two', 'three', 'four', 'five', 'six'}
local function words_string(s)
 vagu suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspic

lu = require('luaunit')

function test_humaneval()
local candidate = words_string
    lu.assertEquals(candidate('Hi, my name is John'), {'Hi', 'my', 'name', 'is', 'John'})
    lu.assertEquals(candidate('One, two, three, four, five, six'), {'One', 'two', 'three', 'four', 'five', 'six'})
    lu.assertEquals(candidate('Hi, my name'), {'Hi', 'my', 'name'})
    lu.assertEquals(candidate('One,, two, three, four, five, six,'), {'One', 'two', 'three', 'four', 'five', 'six'})
    lu.assertEquals(candidate(''), {})
    lu.assertEquals(candidate('ahmed     , gamal'), {'ahmed', 'gamal'})
end

os.exit(lu.LuaUnit.run())