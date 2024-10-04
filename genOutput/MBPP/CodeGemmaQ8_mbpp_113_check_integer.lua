-- Write a function to check if a string represents an integer or not.
local function check_integer(text)
    local i = 1
    local sign = 1
    if text:sub(1,1) == "-" then
        sign = -1
        i = 2
    end
    local number = 0
    while i <= #text do
        local digit = text:sub(i,i)
        if digit:match("%d") then
            number = number * 10 + digit:byte() - 48
        else
            return false
        end
        i = i + 1
    end
    return sign * number
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_integer
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('1'), true)
    lu.assertEquals(candidate('12345'), true)
end

os.exit(lu.LuaUnit.run())