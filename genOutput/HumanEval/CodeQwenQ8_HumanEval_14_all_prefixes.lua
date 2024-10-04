-- Return table of all prefixes from shortest to longest of the input string
-- >>> all_prefixes('abc')
-- {'a', 'ab', 'abc'}
local function all_prefixes(string)
    local prefixes = {}
    for i = 1, #string do
        prefixes[i] = string:sub(1, i)
    end
    return prefixes
end
print(all_prefixes('abc')) -- {'a', 'ab', 'abc'}
print(all_prefixes('hello')) -- {'h', 'he', 'hel', 'hell', 'hello'}
print(all_prefixes('')) -- {}
print(all_prefixes('a')) -- {'a'}
print(all_prefixes('ab')) -- {'a', 'ab'}
print(all_prefixes('abc')) -- {'a', 'ab', 'abc'}
print(all_prefixes('abcd')) -- {'a', 'ab', 'abc', 'abcd'}
print(all_prefixes('abcde')) -- {'a', 'ab', 'abc', 'abcd', 'abcde'}
print(all_prefixes('abcdef')) -- {'a', 'ab', 'abc', 'abcd', 'abcde', 'abcdef'}
print(all_prefixes('abcdefg')) -- {'a', 'ab', 'abc', 'abcd', 'abcde', 'abcdef', 'abcdefg'}
print(all_prefixes('abcdefgh')) -- {'a', 'ab', 'abc', 'abcd', 'abcde', 'abcdef', 'abcdefg', 'abcdefgh'}
print(all_prefixes('abcdefghi')) -- {'a', 'ab', 'abc', 'abcd', 'abcde', 'abcdef', 'abcdefg', 'abcdefgh', 'abcdefghi'}
print(all_prefixes('abcdefghij')) -- {'a', 'ab', 'abc', 'abcd', 'abcde', 'abcdef', 'abcdefg', 'abcdefgh', 'abcdefghi', 'abcdefghij'}
print(all_prefixes('abcdefghijk')) -- {'a', 'ab', 'abc', 'abcd', 'abcde', 'abcdef', 'abcdefg

lu = require('luaunit')

function test_humaneval()
local candidate = all_prefixes
    lu.assertEquals(candidate(''), {})
    lu.assertEquals(candidate('asdfgh'), {'a', 'as', 'asd', 'asdf', 'asdfg', 'asdfgh'})
    lu.assertEquals(candidate('WWW'), {'W', 'WW', 'WWW'})
end

os.exit(lu.LuaUnit.run())