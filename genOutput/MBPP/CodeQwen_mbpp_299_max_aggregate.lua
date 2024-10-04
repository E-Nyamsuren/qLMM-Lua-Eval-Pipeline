-- Write a function to calculate the maximum aggregate from the table of tables.
local function max_aggregate(stdata)
    local max_agg = 0
    for _, table in ipairs(stdata) do
        local agg = 0
        for _, value in ipairs(table) do
            agg = agg + value
        end
        max_agg = math.max(max_agg, agg)
    end
    return max_agg
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_aggregate
    lu.assertEquals(candidate({{'Juan Whelan', 90}, {'Sabah Colley', 88}, {'Peter Nichols', 7}, {'Juan Whelan', 122}, {'Sabah Colley', 84}}), {'Juan Whelan', 212})
    lu.assertEquals(candidate({{'Juan Whelan', 50}, {'Sabah Colley', 48}, {'Peter Nichols', 37}, {'Juan Whelan', 22}, {'Sabah Colley', 14}}), {'Juan Whelan', 72})
    lu.assertEquals(candidate({{'Juan Whelan', 10}, {'Sabah Colley', 20}, {'Peter Nichols', 30}, {'Juan Whelan', 40}, {'Sabah Colley', 50}}), {'Sabah Colley', 70})
end

os.exit(lu.LuaUnit.run())