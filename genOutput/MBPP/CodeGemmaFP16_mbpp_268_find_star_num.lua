-- Write a function to find the n'th star number.
local function find_star_num(n)
    local star_num = 0
    local num = 1
    while true do
        star_num = star_num + num
        if star_num >= n then
            return num
        end
        num = num + 1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_star_num
    lu.assertEquals(candidate(3), 37)
    lu.assertEquals(candidate(4), 73)
    lu.assertEquals(candidate(5), 121)
end

os.exit(lu.LuaUnit.run())