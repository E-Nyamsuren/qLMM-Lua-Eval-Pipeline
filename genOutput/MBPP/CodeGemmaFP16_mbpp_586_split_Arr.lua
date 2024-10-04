-- Write a luathon function to split a table at the nth eelment and add the first part to the end.
local function split_Arr(l, n)
    local arr = {}
    local i = 1
    while i <= #l do
        local j = i + n - 1
        if j > #l then
            j = #l
        end
        table.insert(arr, table.concat(l, ",", i, j))
        i = j + 1
    end
    return arr
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = split_Arr
    lu.assertEquals(candidate({12, 10, 5, 6, 52, 36}, 2), {5, 6, 52, 36, 12, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, 1), {2, 3, 4, 1})
    lu.assertEquals(candidate({0, 1, 2, 3, 4, 5, 6, 7}, 3), {3, 4, 5, 6, 7, 0, 1, 2})
end

os.exit(lu.LuaUnit.run())