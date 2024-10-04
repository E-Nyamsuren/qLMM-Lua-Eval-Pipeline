-- Return maximum element in the table.
-- >>> max_element({1, 2, 3})
-- 3
-- >>> max_element({5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10})
-- 123
local function max_element(l)
    local max = l[1]
    for i = 2, #l do
        if l[i] > max then
            max = l[i]
        end
    end
    return max
end
print(max_element({1, 2, 3})) -- 3
print(max_element({5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10})) -- 123
print(max_element({0, -1, -2, -3, -4})) -- 0
print(max_element({-10, -20, -30, -40, -50})) -- -10
print(max_element({100, 200, 300, 400, 500})) -- 500
print(max_element({1.5, 2.5, 3.5})) -- 3.5
print(max_element({1.1, 2.2, 3.3, 4.4, 5.5})) -- 5.5
print(max_element({1.01, 2.02, 3.03, 4.04, 5.05, 6.06})) -- 6.06
print(max_element({1.001, 2.002, 3.003, 4.004, 5.005, 6.006, 7.007})) -- 7.007
print(max_element({1.0001, 2.0002, 3.0003, 4.0004, 5.0005, 6.0006, 7.0007, 8.0008})) -- 8.0008
print(max_element({1.00001, 2.00002, 3.00003, 4.00004,

lu = require('luaunit')

function test_humaneval()
local candidate = max_element
    lu.assertEquals(candidate({1, 2, 3}), 3)
    lu.assertEquals(candidate({5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10}), 124)
end

os.exit(lu.LuaUnit.run())