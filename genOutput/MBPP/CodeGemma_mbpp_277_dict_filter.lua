-- Write a function that takes in a table and integer n and filters the table to only include entries with values greater than or equal to n.
local function dict_filter(dict, n)
    local filtered = {}
    for k, v in pairs(dict) do
        if v >= n then
            filtered[k] = v
        end
    end
    return filtered
end

lu = require('luaunit')

function test_humaneval()
local candidate = dict_filter
    lu.assertEquals(candidate({['Cierra Vega'] = 175, ['Alden Cantrell'] = 180, ['Kierra Gentry'] = 165, ['Pierre Cox'] = 190}, 170), {['Cierra Vega'] = 175, ['Alden Cantrell'] = 180, ['Pierre Cox'] = 190})
    lu.assertEquals(candidate({['Cierra Vega'] = 175, ['Alden Cantrell'] = 180, ['Kierra Gentry'] = 165, ['Pierre Cox'] = 190}, 180), {['Alden Cantrell'] = 180, ['Pierre Cox'] = 190})
    lu.assertEquals(candidate({['Cierra Vega'] = 175, ['Alden Cantrell'] = 180, ['Kierra Gentry'] = 165, ['Pierre Cox'] = 190}, 190), {['Pierre Cox'] = 190})
end

os.exit(lu.LuaUnit.run())