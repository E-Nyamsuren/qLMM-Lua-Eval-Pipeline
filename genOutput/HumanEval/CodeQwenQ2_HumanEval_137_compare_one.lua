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
    local function to_float(x)
        if type(x) == 'string' then
            x = x:gsub(',', '.')
            return tonumber(x)
        else
            return x
        end
    end
    local a_float = to_float(a)
    local b_float = to_float(b)
    if a_float == b_float then
        return nil
    elseif a_float > b_float then
        return a
    else
        return b
    end
end
print(compare_one(1, 2.5)) -- 2.5
print(compare_one(1, '2,3')) -- '2,3'
print(compare_one('5,1', '6')) -- '6'
print(compare_one('1', 1)) -- None
print(compare_one(2, 2)) -- None
print(compare_one(2, '2')) -- None
print(compare_one('2', '2')) -- None
print(compare_one('2.0', '2')) -- None
print(compare_one('2.0', 2)) -- None
print(compare_one(2.0, 2)) -- None
print(compare_one(2.0, 2.0)) -- None
print(compare_one(2.0, '2.0')) -- None
print(compare_one('2.0', '2.0')) -- None
print(compare_one('2.0', 2.0)) -- None
print(compare_

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