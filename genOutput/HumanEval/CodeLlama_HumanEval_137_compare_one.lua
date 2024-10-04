-- Create a function that takes integers, floats, or strings representing
-- real numbers, and returns the larger variable in its given variable type.
-- Return nil if the values are equal.
-- Note: If a real number is represented as a string, the floating point might be . or ,
-- >>> compare_one(1, 2.5)
-- 2.5
-- >>> compare_one(1, '2,3')
-- '2,3'
-- >>> compare_one('5,1', '6')
-- '6'
-- >>> compare_one('1', 1)
-- None
local function compare_one(a, b)
    if type(a) ~= type(b) then
        return nil
    end
    if type(a) == 'number' then
        if a == b then
            return nil
        end
        return a > b and a or b
    end
    if type(a) == 'string' then
        local a_num, b_num = tonumber(a), tonumber(b)
        if a_num == b_num then
            return nil
        end
        return a_num > b_num and a or b
    end
    return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = compare_one
    lu.assertEquals(candidate(1, 2), 2)
    lu.assertEquals(candidate(1, 2.5), 2.5)
    lu.assertEquals(candidate(2, 3), 3)
    lu.assertEquals(candidate(5, 6), 6)
    lu.assertEquals(candidate(1, '2,3'), '2,3')
    lu.assertEquals(candidate('5,1', '6'), '6')
    lu.assertEquals(candidate('1', '2'), '2')
    lu.assertEquals(candidate('1', 1), None)
end

os.exit(lu.LuaUnit.run())