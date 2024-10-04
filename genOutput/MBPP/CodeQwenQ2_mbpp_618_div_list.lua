-- Write a function to divide two tables element wise.
local function div_list(nums1, nums2)
    local result = {}
    for i, num in ipairs(nums1) do
        if nums2[i] ~= 0 then
            result[i] = num / nums2[i]
        else
            result[i] = 'Error: Division by zero'
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = div_list
    lu.assertEquals(candidate({4, 5, 6}, {1, 2, 3}), {4.0, 2.5, 2.0})
    lu.assertEquals(candidate({3, 2}, {1, 4}), {3.0, 0.5})
    lu.assertEquals(candidate({90, 120}, {50, 70}), {1.8, 1.7142857142857142})
end

os.exit(lu.LuaUnit.run())