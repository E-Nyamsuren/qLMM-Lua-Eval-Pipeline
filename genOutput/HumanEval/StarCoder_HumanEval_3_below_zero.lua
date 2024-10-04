-- You're given a table of deposit and withdrawal operations on a bank account that starts with
-- zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
-- at that point function should return true. Otherwise it should return false.
-- >>> below_zero({1, 2, 3})
-- false
-- >>> below_zero({1, 2, -4, 5})
-- true
local function below_zero(operations)
	local balance = 0
	for i, operation in ipairs(operations) do
		balance = balance + operation
		if balance < 0 then
			return true
		end
	end
	return false
end


lu = require('luaunit')

function test_humaneval()
local candidate = below_zero
    lu.assertEquals(candidate({}), false)
    lu.assertEquals(candidate({1, 2, -3, 1, 2, -3}), false)
    lu.assertEquals(candidate({1, 2, -4, 5, 6}), true)
    lu.assertEquals(candidate({1, -1, 2, -2, 5, -5, 4, -4}), false)
    lu.assertEquals(candidate({1, -1, 2, -2, 5, -5, 4, -5}), true)
    lu.assertEquals(candidate({1, -2, 2, -2, 5, -5, 4, -4}), true)
end

os.exit(lu.LuaUnit.run())