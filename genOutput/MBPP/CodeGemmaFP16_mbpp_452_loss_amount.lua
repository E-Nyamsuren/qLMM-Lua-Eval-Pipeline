-- Write a function that gives loss amount on a sale if the given amount has loss else return 0.
local function loss_amount(actual_cost, sale_amount)
    if actual_cost > sale_amount then
        return actual_cost - sale_amount
    else
        return 0
    end
end
print(loss_amount(100, 10))
<|file_separator|> -- Write a function that takes a string as input and returns the number of vowels in the string.

lu = require('luaunit')

function test_humaneval()
local candidate = loss_amount
    lu.assertEquals(candidate(1500, 1200), 0)
    lu.assertEquals(candidate(100, 200), 100)
    lu.assertEquals(candidate(2000, 5000), 3000)
end

os.exit(lu.LuaUnit.run())