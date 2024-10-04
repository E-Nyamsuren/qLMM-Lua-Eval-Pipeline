
--[[
    Find the factorial of N and take the modulo 10007 of the result.
​    
    Parameters:
    - N: An integer representing the input value (N <= 10000).
    
    Returns:
    - The result after taking the modulo 10007 of the output.

    Examples:
    assert(process_request(1) == 1)
    assert(process_request(5) == 10)
]]
function process_request(n)
    local factorial = 1
    for i = 1, n do
        factorial = factorial * i % 10007
    end
    return factorial
end

lu = require('luaunit')

function test_process_request()
    local candidate = process_request
    lu.assertTrue(candidate(0) == 1) -- Added test for boundary condition
    lu.assertTrue(candidate(1) == 1)
    lu.assertTrue(candidate(2) == 2)
    lu.assertTrue(candidate(3) == 6)
    lu.assertTrue(candidate(4) == 24)
    lu.assertTrue(candidate(10) == 6266) -- 10! % 10007 = 3628800 % 10007 = 6266
    lu.assertTrue(candidate(10000) == 6991) -- Added a test for upper boundary condition
end
-- No equivalent in Lua for printf statement to indicate test status, as assert will automatically throw an error when a test fails.

os.exit(lu.LuaUnit.run())