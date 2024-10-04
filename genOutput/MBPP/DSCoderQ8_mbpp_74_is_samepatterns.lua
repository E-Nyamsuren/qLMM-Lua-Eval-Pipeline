-- Write a function to check whether it follows the sequence given in the patterns table.
local function is_samepatterns(colors, patterns)
    local color_pattern = {}
    local pattern_color = {}
    for i = 1, #colors do
        local color = colors[i]
        local pattern = patterns[i]
        if color_pattern[color] and color_pattern[color] ~= pattern then
            return false
        end
        if pattern_color[pattern] and pattern_color[pattern] ~= color then
            return false
        end
        color_pattern[color] = pattern
        pattern_color[pattern] = color
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