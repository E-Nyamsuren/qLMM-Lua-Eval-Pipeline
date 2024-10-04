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
    if type(a) == 'number' and type(b) == 'number' then
        return math.max(a, b)
    elseif type(a) == 'string' and type(b) == 'string' then
        return (a > b) and a or ((a == b) and nil or b)
    elseif (type(a) == 'number' and type(b) == 'string') or (type(a) == 'string' and type b) then
        return (tonumber(a) > tonumber(b)) and a or ((tonumber(a) == tonumber(b)) and nil or b)
    else
        return (tonumber(a) > tonumber(b)) and a or ((tonumber(a) == tonumber(b)) and nil or b)
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