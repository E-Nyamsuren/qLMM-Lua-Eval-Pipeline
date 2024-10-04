-- Write a function to find the closest smaller number than n.
local function closest_num(N)
    local closest_num = N
    local closest_diff = math.abs(N - closest_num)
    
    for i = N - 1, 1, -1 do
        local diff = math.abs(N - i)
        if diff < closest_diff then
            closest_num = i
            closest_diff = diff
        end
    end
    
    return closest_num
end

lu = require('luaunit')

function test_humaneval()
local candidate = closest_num
    lu.assertEquals(candidate(11), 10)
    lu.assertEquals(candidate(7), 6)
    lu.assertEquals(candidate(12), 11)
end

os.exit(lu.LuaUnit.run())