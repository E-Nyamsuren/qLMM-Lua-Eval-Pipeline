-- Write a function to find the n'th star number.
local function find_star_num(n)
    local i = 1
    local count = 0
    while true do
        if is_star_num(i) then
            count = count + 1
            if count == n then
                return i
            end
        end
        i = i + 1
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