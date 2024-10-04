-- Write a luathon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a table of numbers and the sum,
local function get_pairs_count(arr, sum)
local count = 0
for i = 1, #arr do
for j = i + 1, #arr do
if arr[i] + arr[j] == sum then
count = count + 1
end
end
end
return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_pairs_count
    lu.assertEquals(candidate({1, 1, 1, 1}, 2), 6)
    lu.assertEquals(candidate({1, 5, 7, -1, 5}, 6), 3)
    lu.assertEquals(candidate({1, -2, 3}, 1), 1)
    lu.assertEquals(candidate({-1, -2, 3}, -3), 1)
end

os.exit(lu.LuaUnit.run())