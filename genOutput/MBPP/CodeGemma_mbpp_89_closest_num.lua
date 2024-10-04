-- Write a function to find the closest smaller number than n.
local function closest_num(N)
    local i = 1
    local j = N
    local k = N
    while i <= j do
        local mid = math.floor((i + j) / 2)
        if mid == N then
            return mid
        elseif mid < N then
            i = mid + 1
        else
            j = mid - 1
        end
        k = mid
    end
    return k
end

lu = require('luaunit')

function test_humaneval()
local candidate = closest_num
    lu.assertEquals(candidate(11), 10)
    lu.assertEquals(candidate(7), 6)
    lu.assertEquals(candidate(12), 11)
end

os.exit(lu.LuaUnit.run())