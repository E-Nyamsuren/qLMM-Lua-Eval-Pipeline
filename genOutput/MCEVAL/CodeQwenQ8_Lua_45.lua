
--[[
You are given a 1 by n pixel image, where each pixel has a color represented by an integer. You can perform an operation where you pick a color and change all connected pixels of the same color to the chosen color. Two pixels are connected if they are adjacent and have the same color. Find the minimum number of operations required to make all pixels the same color.

Note: For each color, there are at most 20 pixels of that color.

Examples:
    >>> minOperations(5, {1, 2, 3, 2, 1})
    2
]]--
--[[
    The function minOperations takes in two parameters:
        n: an integer representing the number of pixels in the image
        pixels: a table of integers representing the color of each pixel
    The function returns an integer representing the minimum number of operations required to make all pixels the same color.
]]--

lu = require('luaunit')

function testMinOperations()
    local candidate = minOperations
    lu.assertTrue(candidate(5, {1, 2, 3, 2, 1}) == 2)
    lu.assertTrue(candidate(4, {1, 1, 2, 2}) == 1)
    lu.assertTrue(candidate(5, {1, 2, 1, 4, 2}) == 3)
    lu.assertTrue(candidate(5, {5, 5, 5, 5, 5}) == 0)
    lu.assertTrue(candidate(6, {1, 1, 1, 2, 2, 2}) == 1)
    lu.assertTrue(candidate(7, {1, 3, 3, 3, 2, 2, 2}) == 2)
    lu.assertTrue(candidate(8, {4, 4, 4, 4, 3, 3, 3, 3}) == 1)
    lu.assertTrue(candidate(9, {1, 2, 3, 4, 5, 6, 7, 8, 9}) == 8)
    lu.assertTrue(candidate(10, {1, 2, 1, 2, 1, 2, 1, 2, 1, 2}) == 5)
    lu.assertTrue(candidate(3, {3, 3, 3}) == 0)
    lu.assertTrue(candidate(4, {2, 1, 1, 2}) == 1)
end

os.exit(lu.LuaUnit.run())