-- Write a function that takes in a table and integer n and filters the table to only include entries with values greater than or equal to n.
local function dict_filter(dict, n)
    local filtered_dict = {}
    for key, value in pairs(dict) do
        if value >= n then
            filtered_dict[key] = value
        end
    end
    return filtered_dict
end

lu = require('luaunit')

function test_humaneval()
local candidate = dict_filter
    lu.assertEquals(candidate({['Cierra Vega'] = 175, ['Alden Cantrell'] = 180, ['Kierra Gentry'] = 165, ['Pierre Cox'] = 190}, 170), {['Cierra Vega'] = 175, ['Alden Cantrell'] = 180, ['Pierre Cox'] = 190})
    lu.assertEquals(candidate({['Cierra Vega'] = 175, ['Alden Cantrell'] = 180, ['Kierra Gentry'] = 165, ['Pierre Cox'] = 190}, 180), {['Alden Cantrell'] = 180, ['Pierre Cox'] = 190})
    lu.assertEquals(candidate({['Cierra Vega'] = 175, ['Alden Cantrell'] = 180, ['Kierra Gentry'] = 165, ['Pierre Cox'] = 190}, 190), {['Pierre Cox'] = 190})
end

os.exit(lu.LuaUnit.run())