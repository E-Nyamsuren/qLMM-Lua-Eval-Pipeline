-- Write a function to check if all values are same in a table.
local function check_value(dict, n)
    local count = 0
    for k, v in pairs(dict) do
        if v == n then
            count = count + 1
        end
    end
    return count == #dict
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_value
    lu.assertEquals(candidate({['Cierra Vega'] = 12, ['Alden Cantrell'] = 12, ['Kierra Gentry'] = 12, ['Pierre Cox'] = 12}, 10), false)
    lu.assertEquals(candidate({['Cierra Vega'] = 12, ['Alden Cantrell'] = 12, ['Kierra Gentry'] = 12, ['Pierre Cox'] = 12}, 12), true)
    lu.assertEquals(candidate({['Cierra Vega'] = 12, ['Alden Cantrell'] = 12, ['Kierra Gentry'] = 12, ['Pierre Cox'] = 12}, 5), false)
end

os.exit(lu.LuaUnit.run())