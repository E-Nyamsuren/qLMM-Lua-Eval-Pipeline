-- Write a function to find cubes of individual elements in a table.
local function cube_nums(nums)
 attent suspic<|fim_middle|> suspic suspic<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = cube_nums
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}), {1, 8, 27, 64, 125, 216, 343, 512, 729, 1000})
    lu.assertEquals(candidate({10, 20, 30}), {1000, 8000, 27000})
    lu.assertEquals(candidate({12, 15}), {1728, 3375})
end

os.exit(lu.LuaUnit.run())