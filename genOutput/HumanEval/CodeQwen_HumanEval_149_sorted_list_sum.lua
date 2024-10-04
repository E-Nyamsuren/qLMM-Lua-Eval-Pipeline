-- Write a function that accepts a table of strings as a parameter,
-- deletes the strings that have odd lengths from it,
-- and returns the resulted table with a sorted order,
-- The table is always a table of strings and never a table of numbers,
-- and it may contain duplicates.
-- The order of the table should be ascending by length of each word, and you
-- should return the table sorted by that rule.
-- If two words have the same length, sort the table alphabetically.
-- The function should return a table of strings in sorted order.
-- You may assume that all words will have the same length.
-- For example:
-- >>> list_sort({'aa', 'a', 'aaa'})
-- {'aa'}
-- >>> list_sort({'ab', 'a', 'aaa', 'cd'})
-- {'ab', 'cd'}
local function sorted_list_sum(lst)
    -- Remove strings with odd lengths
    local even_length_lst = {}
    for _, str in ipairs(lst) do
        if #str % 2 == 0 then
            table.insert(even_length_lst, str)
        end
    end
    
    -- Sort the table by length, then alphabetically
    table.sort(even_length_lst, function(a, b)
        if #a == #b then
            return a < b
        else
            return #a < #b
        end
    end)
    
    return even_length_lst
end
print(sorted_list_sum({'aa', 'a', 'aaa'})) -- {'aa'}
print(sorted_list_sum({'ab', 'a', 'aaa', 'cd'})) -- {'ab', 'cd'}
print(sorted_list_sum({'hello', 'world', 'hi', 'code', 'python'})) -- {'hi', 'code', 'python'}
print(sorted_list_sum({'123456', '12345', '1234', '123', '12'})) -- {'12', '123', '1234', '12345'}
print(sorted_list_sum({'abcdefg', 'abcdef', 'abcde', 'abcd', 'abc'})) --

lu = require('luaunit')

function test_humaneval()
local candidate = sorted_list_sum
    lu.assertEquals(candidate({'aa', 'a', 'aaa'}), {'aa'})
    lu.assertEquals(candidate({'school', 'AI', 'asdf', 'b'}), {'AI', 'asdf', 'school'})
    lu.assertEquals(candidate({'d', 'b', 'c', 'a'}), {})
    lu.assertEquals(candidate({'d', 'dcba', 'abcd', 'a'}), {'abcd', 'dcba'})
    lu.assertEquals(candidate({'AI', 'ai', 'au'}), {'AI', 'ai', 'au'})
    lu.assertEquals(candidate({'a', 'b', 'b', 'c', 'c', 'a'}), {})
    lu.assertEquals(candidate({'aaaa', 'bbbb', 'dd', 'cc'}), {'cc', 'dd', 'aaaa', 'bbbb'})
end

os.exit(lu.LuaUnit.run())