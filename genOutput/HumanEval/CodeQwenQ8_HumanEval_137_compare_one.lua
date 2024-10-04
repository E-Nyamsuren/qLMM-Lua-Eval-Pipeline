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
    -- Convert strings to floats if necessary
    if type(a) == 'string' then
        a = a:gsub(',', '.')
        a = tonumber(a)
    end
    if type(b) == 'string' then
        b = b:gsub(',', '.')
        b = tonumber(b)
    end
    -- Compare the values
    if a == b then
        return nil
    elseif a > b then
        return a
    else
        return b
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