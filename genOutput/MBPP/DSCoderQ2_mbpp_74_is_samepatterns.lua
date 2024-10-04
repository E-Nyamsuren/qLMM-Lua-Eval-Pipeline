-- Write a function to check whether it follows the sequence given in the patterns table.
local function is_samepatterns(colors, patterns)
    local patterns_table = patterns_table()
    for _, color in ipairs(colors) do
        local pattern = patterns_table[color]
        if pattern ~= patterns[1] then
            return false
        end
        table.remove(patterns, 1)
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_samepatterns
    lu.assertEquals(candidate({'red', 'green', 'green'}, {'a', 'b', 'b'}), true)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b', 'b'}), false)
    lu.assertEquals(candidate({'red', 'green', 'greenn'}, {'a', 'b'}), false)
end

os.exit(lu.LuaUnit.run())