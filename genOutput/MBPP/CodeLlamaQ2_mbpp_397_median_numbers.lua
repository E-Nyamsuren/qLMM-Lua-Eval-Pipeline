-- Write a function to find the median of three numbers.
local function median_numbers(a, b, c)
    local sorted = {a, b, c}
    table.sort(sorted)
    if sorted[1] == sorted[2] and sorted[2] == sorted[3] then
        return sorted[1]
    elseif sorted[1] == sorted[2] then
        return sorted[3]
    elseif sorted[2] == sorted[3] then
        return sorted[1]
    else
        return sorted[2]
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = median_numbers
    lu.assertEquals(candidate(25, 55, 65), 55.0)
    lu.assertEquals(candidate(20, 10, 30), 20.0)
    lu.assertEquals(candidate(15, 45, 75), 45.0)
end

os.exit(lu.LuaUnit.run())