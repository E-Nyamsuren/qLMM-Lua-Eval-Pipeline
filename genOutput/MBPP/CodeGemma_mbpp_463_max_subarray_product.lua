-- Write a function to find the maximum product subtable of the given table.
local function max_subarray_product(arr)
    local max_so_far = arr[1]
    local max_ending_here = arr[1]
    local min_ending_here = arr[1]
    local start = 1
    local end = 1
    local s = 1
    local n = #arr
    for i = 2, n do
        if arr[i] > 0 then
            max_ending_here = max_ending_here * arr[i]
            min_ending_here = math.min(min_ending_here * arr[i], arr[i])
        elseif arr[i] == 0 then
            max_ending_here = 0
            min_ending_here = 0
            s = i + 1
        else
            local temp = max_ending_here
            max_ending_here = math.max(min_ending_here * arr[i], arr[i])
            min_ending_here = temp * arr[i]
        end
        if max_so_far < max_ending_here then
            max_so_far = max_ending_here
            start = s
            end = i
        end
    end
    return max_so_far, start, end
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_subarray_product
    lu.assertEquals(candidate({1, -2, -3, 0, 7, -8, -2}), 112)
    lu.assertEquals(candidate({6, -3, -10, 0, 2}), 180)
    lu.assertEquals(candidate({-2, -40, 0, -2, -3}), 80)
end

os.exit(lu.LuaUnit.run())