-- Write a function to create a table of N empty dictionaries.
local function empty_list(length)
    local list = {}
    for i = 1, length do
        list[i] = {}
    end
    return list
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = empty_list
    lu.assertEquals(candidate(5), {{}, {}, {}, {}, {}})
    lu.assertEquals(candidate(6), {{}, {}, {}, {}, {}, {}})
    lu.assertEquals(candidate(7), {{}, {}, {}, {}, {}, {}, {}})
end

os.exit(lu.LuaUnit.run())