-- Filter an input table of strings only for ones that contain given substring
-- >>> filter_by_substring({}, 'a')
-- {}
-- >>> filter_by_substring({'abc', 'bacd', 'cde', 'array'}, 'a')
-- {'abc', 'bacd', 'array'}
local function filter_by_substring(strings, substring)
    local filtered_strings = {}
    for _, string in ipairs(strings) do
        if string:find(substring) then
            table.insert(filtered_strings, string)
        end
    end
    return filtered_strings
end
print(filter_by_substring({}, 'a')) -- {}
print(filter_by_substring({'abc', 'bacd', 'cde', 'array'}, 'a')) -- {'abc', 'bacd', 'array'}
print(filter_by_substring({'apple', 'banana', 'cherry', 'date'}, 'a')) -- {'apple', 'banana', 'date'}
print(filter_by_substring({'hello', 'world', 'python', 'programming'}, 'o')) -- {'hello', 'world', 'python'}
print(filter_by_substring({'one', 'two', 'three', 'four'}, 'z')) -- {}
print(filter_by_substring({'one', 'two', 'three', 'four'}, '')) -- {'one', 'two', 'three', 'four'}
print(filter_by_substring({'one', 'two', 'three', 'four'}, 'o')) -- {'one', 'two', 'three', 'four'}
print(filter_by_substring({'one', 'two', 'three', 'four'}, 'o')) -- {'one', 'two', 'three', 'four'}
print(filter_by_substring({'one', 'two', 'three', 'four'}, 'o')) -- {'one', 'two', 'three', 'four'}
print(filter_by_substring({'one', 'two', 'three', 'four'}, 'o')) -- {'one', 'two', 'three', 'four'}
print(filter_by_substring({'one', 'two', 'three', '

lu = require('luaunit')

function test_humaneval()
local candidate = filter_by_substring
    lu.assertEquals(candidate({}, 'john'), {})
    lu.assertEquals(candidate({'xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'}, 'xxx'), {'xxx', 'xxxAAA', 'xxx'})
    lu.assertEquals(candidate({'xxx', 'asd', 'aaaxxy', 'john doe', 'xxxAAA', 'xxx'}, 'xx'), {'xxx', 'aaaxxy', 'xxxAAA', 'xxx'})
    lu.assertEquals(candidate({'grunt', 'trumpet', 'prune', 'gruesome'}, 'run'), {'grunt', 'prune'})
end

os.exit(lu.LuaUnit.run())