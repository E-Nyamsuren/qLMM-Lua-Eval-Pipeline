-- Write a function to find number of tables present in the given table.
local function find_lists(Input)
    local List = {}
    local i = 1
    for k, v in pairs(Input) do
        if type(v) == "table" then
            List[i] = v
            i = i + 1
        end
    end
    return List
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_lists
    lu.assertEquals(candidate({{1, 2, 3, 4}, {5, 6, 7, 8}}), 2)
    lu.assertEquals(candidate({{1, 2}, {3, 4}, {5, 6}}), 3)
    lu.assertEquals(candidate({9, 8, 7, 6, 5, 4, 3, 2, 1}), 1)
end

os.exit(lu.LuaUnit.run())