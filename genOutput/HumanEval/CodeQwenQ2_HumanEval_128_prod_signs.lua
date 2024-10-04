-- You are given a table arr of integers and you need to return
-- sum of magnitudes of integers multiplied by product of all signs
-- of each number in the table, represented by 1, -1 or 0.
-- Note: return nil for empty arr.
-- Example:
-- >>> prod_signs({1, 2, 2, -4})
-- 9
-- >>> prod_signs({0, 1})
-- 0
-- >>> prod_signs({})
-- None
local function prod_signs(arr)
    if #arr == 0 then return nil end
    local prod = 1
    local sum = 0
    for _, v in ipairs(arr) do
        if v > 0 then
            prod = prod * 1
            sum = sum + v
        elseif v < 0 then
            prod = prod * -1
            sum = sum + v
        else
            prod = prod * 0
            sum = sum + v
        end
    end
    return sum * prod
end
print(prod_signs({1, 2, 2, -4})) -- 9
print(prod_signs({0, 1})) -- 0
print(prod_signs({})) -- nil
print(prod_signs({1, 2, 3, 4, 5})) -- 15
print(prod_signs({1, 2, 3, 4, 5, 6, 7, 8, 9, 10})) -- 55
print(prod_signs({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15})) -- 275
print(prod_signs({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16})) -- 2750
print(prod_signs({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12

lu = require('luaunit')

function test_humaneval()
local candidate = prod_signs
    lu.assertEquals(candidate({1, 2, 2, -4}), -9)
    lu.assertEquals(candidate({0, 1}), 0)
    lu.assertEquals(candidate({1, 1, 1, 2, 3, -1, 1}), -10)
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({2, 4, 1, 2, -1, -1, 9}), 20)
    lu.assertEquals(candidate({-1, 1, -1, 1}), 4)
    lu.assertEquals(candidate({-1, 1, 1, 1}), -4)
    lu.assertEquals(candidate({-1, 1, 1, 0}), 0)
end

os.exit(lu.LuaUnit.run())