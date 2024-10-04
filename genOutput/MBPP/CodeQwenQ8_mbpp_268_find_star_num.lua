-- Write a function to find the n'th star number.
local function find_star_num(n)
    local count = 0
    local num = 1
    while count < n do
        num = num + 1
        local stars = 0
        local temp = num
        while temp > 0 do
            if temp % 2 == 1 then
                stars = stars + 1
            end
            temp = temp // 2
        end
        if stars == num then
            count = count + 1
        end
    end
    return num
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_star_num
    lu.assertEquals(candidate(3), 37)
    lu.assertEquals(candidate(4), 73)
    lu.assertEquals(candidate(5), 121)
end

os.exit(lu.LuaUnit.run())