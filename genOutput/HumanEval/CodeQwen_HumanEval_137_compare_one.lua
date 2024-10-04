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
    local a_type = type(a)
    local b_type = type(b)
    if a_type == 'number' and b_type == 'number' then
        if a == b then
            return nil
        else
            return a > b and a or b
        end
    elseif a_type == 'string' and b_type == 'string' then
        a = a:gsub(',', '.')
        b = b:gsub(',', '.')
        if tonumber(a) == tonumber(b) then
            return nil
        else
            return tonumber(a) > tonumber(b) and a or b
        end
    elseif a_type == 'string' then
        a = a:gsub(',', '.')
        if tonumber(a) > b then
            return a
        else
            return b
        end
    elseif b_type == 'string' then
        b = b:gsub(',', '.')
        if a > tonumber(b) then
            return a
        else
            return b
        end
    else
        return nil
    end
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