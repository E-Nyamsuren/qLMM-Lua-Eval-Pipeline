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
print(filter_by_substring({'substring', 'submarine', 'sublime', 'subtext'}, 'sub')) -- {'substring', 'submarine', 'sublime', 'subtext'}
print(filter_by_substring({'123', '456', '789', '101112'}, '1')) -- {'123'}
print(filter_by_substring({'test', 'testing', 'tester', 'testering'}, 'test')) -- {'test', 'testing', 'tester', 'testering'}
print(filter_by_substring({'no', 'yes', 'maybe', 'perhaps'}, 'no')) -- {'no'}
print(filter_by_substring({'empty', 'string', 'table', 'nil'}, '')) -- {'empty', 'string', 'table', 'nil'}
print(filter_by_substring({'lower', 'UPPER',

lu = require('luaunit')

function test_humaneval()
local candidate = filter_by_substring
    lu.assertEquals(candidate({}, 'john'), {})
    lu.assertEquals(candidate({'xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'}, 'xxx'), {'xxx', 'xxxAAA', 'xxx'})
    lu.assertEquals(candidate({'xxx', 'asd', 'aaaxxy', 'john doe', 'xxxAAA', 'xxx'}, 'xx'), {'xxx', 'aaaxxy', 'xxxAAA', 'xxx'})
    lu.assertEquals(candidate({'grunt', 'trumpet', 'prune', 'gruesome'}, 'run'), {'grunt', 'prune'})
end

os.exit(lu.LuaUnit.run())