-- Filter an input table of strings only for ones that start with a given prefix.
-- >>> filter_by_prefix({}, 'a')
-- {}
-- >>> filter_by_prefix({'abc', 'bcd', 'cde', 'array'}, 'a')
-- {'abc', 'array'}
local function filter_by_prefix(strings, prefix)
    local filtered = {}
    for _, str in ipairs(strings) do
        if str:sub(1, #prefix) == prefix then
            table.insert(filtered, str)
        end
    end
    return filtered
end
print(filter_by_prefix({}, 'a')) -- {}
print(filter_by_prefix({'abc', 'bcd', 'cde', 'array'}, 'a')) -- {'abc', 'array'}
print(filter_by_prefix({'apple', 'banana', 'cherry', 'avocado'}, 'a')) -- {'apple', 'avocado'}
print(filter_by_prefix({'dog', 'cat', 'bird', 'fish'}, 'b')) -- {'bird'}
print(filter_by_prefix({'one', 'two', 'three', 'four'}, 'four')) -- {'four'}
print(filter_by_prefix({'sun', 'moon', 'stars', 'planets'}, 'p')) -- {'planets'}
print(filter_by_prefix({'red', 'blue', 'green', 'yellow'}, 'g')) -- {'green'}
print(filter_by_prefix({'zero', 'one', 'two', 'three'}, 'z')) -- {'zero'}
print(filter_by_prefix({'lion', 'tiger', 'elephant', 'giraffe'}, 't')) -- {'tiger'}
print(filter_by_prefix({'sun', 'moon', 'stars', 'planets'}, '')) -- {'sun', 'moon', 'stars', 'planets'}
print(filter_by_prefix({'sun', 'moon', 'stars', 'planets'}, 'x')) -- {}
print(filter_by_prefix({'sun', 'moon', 'stars', 'planets'}, 's')) -- {'stars'}
print(filter_by_prefix({'sun', 'moon', 'stars', 'planets

lu = require('luaunit')

function test_humaneval()
local candidate = filter_by_prefix
    lu.assertEquals(candidate({}, 'john'), {})
    lu.assertEquals(candidate({'xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'}, 'xxx'), {'xxx', 'xxxAAA', 'xxx'})
end

os.exit(lu.LuaUnit.run())