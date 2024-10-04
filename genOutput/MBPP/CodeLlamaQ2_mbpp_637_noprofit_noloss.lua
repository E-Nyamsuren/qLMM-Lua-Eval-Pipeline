-- Write a function to check whether the given amount has no profit and no loss
local function noprofit_noloss(actual_cost, sale_amount)
    if actual_cost == nil or sale_amount == nil then
        return false
    end
    if actual_cost < sale_amount then
        return false
    end
    if actual_cost == sale_amount then
        return true
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = noprofit_noloss
    lu.assertEquals(candidate(1500, 1200), false)
    lu.assertEquals(candidate(100, 100), true)
    lu.assertEquals(candidate(2000, 5000), false)
end

os.exit(lu.LuaUnit.run())