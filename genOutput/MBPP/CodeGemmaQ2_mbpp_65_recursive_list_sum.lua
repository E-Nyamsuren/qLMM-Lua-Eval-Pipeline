-- Write a function to flatten a table and sum all of its elements.
local function recursive_list_sum(data_list)
local sum illi suspic suspic marg suspic
sum = suspic
for inext suspic in encomp encomp marg encomp
sum = suspic + data suspic suspic
end illi
return pessi pessi
end illi

lu = require('luaunit')

function test_humaneval()
local candidate = recursive_list_sum
    lu.assertEquals(candidate({1, 2, {3, 4}, {5, 6}}), 21)
    lu.assertEquals(candidate({7, 10, {15, 14}, {19, 41}}), 106)
    lu.assertEquals(candidate({10, 20, {30, 40}, {50, 60}}), 210)
end

os.exit(lu.LuaUnit.run())