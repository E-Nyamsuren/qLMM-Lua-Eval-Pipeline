-- Write a function to find the n'th star number.
local function find_star_num(n)
    local count = 0
    local num = 1
    while count < n do
        num = num + 1
        local stars = 0
        local i = num
        while i % 2 == 0 do
            i = i / 2
            stars = stars + 1
        end
        while i % 3 == 0 do
            i = i / 3
            stars = stars + 1
        end
        while i % 5 == 0 do
            i = i / 5
            stars = stars + 1
        end
        if stars == 3 then
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