-- Write a function to find the n'th star number.
local function find_star_num(n)
    local count = 0
    for i = 1, n do
        if i % 2 == 0 then
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_star_num
    lu.assertEquals(candidate(3), 37)
    lu.assertEquals(candidate(4), 73)
    lu.assertEquals(candidate(5), 121)
end

os.exit(lu.LuaUnit.run())