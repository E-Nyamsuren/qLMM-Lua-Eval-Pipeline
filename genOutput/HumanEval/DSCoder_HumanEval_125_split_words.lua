-- Given a string of words, return a table of words split on whitespace, if no whitespaces exists in the text you
-- should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
-- alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
-- Examples
-- >>> split_words('Hello world!')
-- {'Hello', 'world!'}
-- >>> split_words('Hello,world!')
-- {'Hello', 'world!'}
-- >>> split_words('abcdef')
-- 3
local function split_words(txt)
  if string.find(txt, ' ') then
    return string.split(txt, ' ')
  elseif string.find(txt, ',') then
    return string.split(txt, ',')
  else
    return string.len([[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]]:gsub('[%a]', function(c) return string.byte(c) % 2 == 1 and 1 or 0 end))
  end
end

lu = require('luaunit')

function test_humaneval()
local candidate = split_words
    lu.assertEquals(candidate('Hello world!'), {'Hello', 'world!'})
    lu.assertEquals(candidate('Hello,world!'), {'Hello', 'world!'})
    lu.assertEquals(candidate('Hello world,!'), {'Hello', 'world,!'})
    lu.assertEquals(candidate('Hello,Hello,world !'), {'Hello,Hello,world', '!'})
    lu.assertEquals(candidate('abcdef'), 3)
    lu.assertEquals(candidate('aaabb'), 2)
    lu.assertEquals(candidate('aaaBb'), 1)
    lu.assertEquals(candidate(''), 0)
end

os.exit(lu.LuaUnit.run())