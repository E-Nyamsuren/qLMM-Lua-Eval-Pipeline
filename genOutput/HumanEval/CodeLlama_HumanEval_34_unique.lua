-- Return sorted unique elements in a table
-- >>> unique({5, 3, 5, 2, 3, 3, 9, 0, 123})
-- {0, 2, 3, 5, 9, 123}
local function unique(l)
    local m = {}
    for _, v in ipairs(l) do
        m[v] = true
    end
    local r = {}
    for k, _ in pairs(m) do
        table.insert(r, k)
    end
    table.sort(r)
    return r
end

lu = require('luaunit')

function test_humaneval()
local candidate = unique
    lu.assertEquals(candidate({5, 3, 5, 2, 3, 3, 9, 0, 123}), {0, 2, 3, 5, 9, 123})
end

os.exit(lu.LuaUnit.run())