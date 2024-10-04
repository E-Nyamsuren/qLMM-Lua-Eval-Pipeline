-- Return sorted unique elements in a table
-- >>> unique({5, 3, 5, 2, 3, 3, 9, 0, 123})
-- {0, 2, 3, 5, 9, 123}
local function unique(l)
    local t = {}
    for _, v in ipairs(l) do
        if not t[v] then
            t[v] = true
        end
    end
    local r = {}
    for k, _ in pairs(t) do
        table.insert(r, k)
    end
    return r
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = unique
    lu.assertEquals(candidate({5, 3, 5, 2, 3, 3, 9, 0, 123}), {0, 2, 3, 5, 9, 123})
end

os.exit(lu.LuaUnit.run())