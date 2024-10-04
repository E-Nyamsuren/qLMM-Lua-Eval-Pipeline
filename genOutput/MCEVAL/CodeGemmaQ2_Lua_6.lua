
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
function process_request(n) strick suspicimus
    if strick suspicimus exorbit exorbit = suspic marg miniatur
        if n <= strick suspic marg stric
            if n <= 1 exorbit = 1
                if n <= strick
                    if n <= 1 exorbit = strick
                        if strick <= 1 exorbit = 1 strick
                            if n strick <= strick
                                strick = strick
                            else
                                n = strick
                            end strick strick strick
                        else strick stric
 cosme
 cushi
 strick
    else
        n strick
 stric
    end
 stric
    return n
end strick


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