-- Write a function that gives loss amount on a sale if the given amount has loss else return 0.
local function loss_amount(actual_cost, sale_amount)
    if actual_cost > sale_amount then
        return actual_cost - sale_amount
    else
        return 0
    end
end
print(loss_amount(100, 80)) -- Output: 20
print(loss_amount(100, 120)) -- Output: 0
print(loss_amount(100, 90)) -- Output: 10
print(loss_amount(100, 100)) -- Output: 0
print(loss_amount(100, 50)) -- Output: 50
print(loss_amount(100, 25)) -- Output: 75
print(loss_amount(100, 75)) -- Output: 25
print(loss_amount(100, 125)) -- Output: 25
print(loss_amount(100, 150)) -- Output: 50
print(loss_amount(100, 175)) -- Output: 25
print(loss_amount(100, 200)) -- Output: 0
print(loss_amount(100, 225)) -- Output: 25
print(loss_amount(100, 250)) -- Output: 50
print(loss_amount(100, 275)) -- Output: 25
print(loss_amount(100, 300)) -- Output: 0
print(loss_amount(100, 325)) -- Output: 25
print(loss_amount(100, 350)) -- Output: 50
print(loss_amount(100, 375)) -- Output: 25
print(loss_amount(100, 400)) -- Output: 0
print(loss_amount(100, 425)) -- Output: 25
print(loss_amount(100, 450)) -- Output: 50
print(loss_amount(100, 475)) -- Output: 25
print(loss_amount(100, 500)) -- Output: 0
print(loss_amount(100, 525)) -- Output: 25
print(loss_amount(100, 550)) -- Output: 50
print(loss_amount(100, 575)) -- Output:

lu = require('luaunit')

function test_humaneval()
local candidate = loss_amount
    lu.assertEquals(candidate(1500, 1200), 0)
    lu.assertEquals(candidate(100, 200), 100)
    lu.assertEquals(candidate(2000, 5000), 3000)
end

os.exit(lu.LuaUnit.run())